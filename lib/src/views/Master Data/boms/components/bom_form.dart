import 'dart:io';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

import 'package:auto_route/auto_route.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../../data/models/models.dart';
import '../../../../data/repositories/repos.dart';
import '../../../../shared/widgets/custom_dialog.dart';
import '../../../../utils/constant.dart';
import '../blocs/create_update_bloc/bloc.dart';
import 'bom_form_tbl.dart';
import 'bom_row_form.dart';

class BillOfMaterialFormPage extends StatelessWidget {
  const BillOfMaterialFormPage({
    Key? key,
    this.selectedBoMObj,
    required this.onRefresh,
  }) : super(key: key);

  final BoMModel? selectedBoMObj;
  final void Function() onRefresh;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateUpdateBoMBloc(
        repo: context.read<BomRepo>(),
        bomObj: selectedBoMObj,
      ),
      child: BlocListener<CreateUpdateBoMBloc, CreateUpdateBoMState>(
        listenWhen: (prev, curr) => prev.status != curr.status,
        listener: (context, state) {
          if (state.status.isSubmissionInProgress) {
            context.loaderOverlay.show();
          } else if (state.status.isSubmissionFailure) {
            context.loaderOverlay.hide();

            CustomDialogBox.errorMessage(context, message: state.message);
          } else if (state.status.isSubmissionSuccess) {
            context.loaderOverlay.hide();

            CustomDialogBox.successMessage(
              context,
              message: state.message,
              onPositiveClick: (_) {
                context.router.pop();
                onRefresh();
              },
            );
          }
        },
        child: ScaffoldPage.withPadding(
          padding: const EdgeInsets.all(10.0),
          header: _pageHeader(context),
          content: FormBody(
            selectedBomObj: selectedBoMObj,
          ),
        ),
      ),
    );
  }

  PageHeader _pageHeader(BuildContext context) {
    return PageHeader(
      title: const Text("Bill Of Material Form"),
      leading: CommandBar(
        overflowBehavior: CommandBarOverflowBehavior.noWrap,
        primaryItems: [
          CommandBarBuilderItem(
            builder: (context, mode, w) => w,
            wrappedItem: CommandBarButton(
              icon: const Icon(
                FluentIcons.back,
              ),
              onPressed: () {
                context.router.pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FormBody extends StatefulWidget {
  const FormBody({
    super.key,
    this.selectedBomObj,
  });

  final BoMModel? selectedBomObj;

  @override
  State<FormBody> createState() => _FormBodyState();
}

class _FormBodyState extends State<FormBody> {
  final double maxFieldWidth = 300.0;
  final double minFieldWidth = 150;

  final TextEditingController itemCodeController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController uomController = TextEditingController();
  final TextEditingController baseUomController = TextEditingController();
  final TextEditingController baseWeightController = TextEditingController();
  final TextEditingController dwPcUnbakeController = TextEditingController();
  final TextEditingController dwPcBakedController = TextEditingController();
  final TextEditingController premixCodeController = TextEditingController();
  final TextEditingController totalDoughWeightController =
      TextEditingController();

  final ValueNotifier<List<ProductModel>> forSaleProducts = ValueNotifier([]);
  final ValueNotifier<List<ProductModel>> premixProducts = ValueNotifier([]);
  final ValueNotifier<List<UoMModel>> uomsNotifier = ValueNotifier([]);

  late CreateUpdateBoMBloc formBloc;

  @override
  void initState() {
    formBloc = context.read<CreateUpdateBoMBloc>();
    final selectedBomObj = widget.selectedBomObj;

    if (selectedBomObj != null) {
      itemCodeController.text = selectedBomObj.itemCode;
      quantityController.text = selectedBomObj.quantity.toStringAsFixed(2);
      uomController.text = selectedBomObj.uom;
      baseUomController.text = selectedBomObj.baseUom ?? "";
      baseWeightController.text = selectedBomObj.baseWeight != null
          ? selectedBomObj.baseWeight!.toStringAsFixed(2)
          : "";
      dwPcUnbakeController.text = selectedBomObj.dwPcUnbake != null
          ? selectedBomObj.dwPcUnbake!.toStringAsFixed(2)
          : "";
      dwPcBakedController.text = selectedBomObj.dwPcBaked != null
          ? selectedBomObj.dwPcBaked!.toStringAsFixed(2)
          : "";
      premixCodeController.text = selectedBomObj.premixCode ?? "";
      totalDoughWeightController.text = selectedBomObj.tdw != null
          ? selectedBomObj.tdw!.toStringAsFixed(2)
          : "";
    }
    loadInitialData();
    super.initState();
  }

  @override
  void dispose() {
    itemCodeController.dispose();
    quantityController.dispose();
    uomController.dispose();
    baseUomController.dispose();
    baseWeightController.dispose();
    dwPcUnbakeController.dispose();
    dwPcBakedController.dispose();
    premixCodeController.dispose();
    totalDoughWeightController.dispose();
    forSaleProducts.dispose();
    premixProducts.dispose();
    uomsNotifier.dispose();
    super.dispose();
  }

  void loadInitialData() async {
    context.loaderOverlay.show();
    ProductRepo productRepo = context.read<ProductRepo>();
    try {
      await productRepo.getAll();
      forSaleProducts.value = productRepo.datas
          .where(
            (e) =>
                e.itemGroup == "Breads" ||
                e.itemGroup == "Cakes" ||
                e.itemGroup == "Coffee Shop",
          )
          .toList();
      premixProducts.value = productRepo.datas
          .where(
            (e) =>
                e.itemGroup == "Premix" || e.itemGroup == "Intermediate Goods",
          )
          .toList();
      await fetchUoms();
    } on HttpException catch (e) {
      CustomDialogBox.errorMessage(context, message: e.message);
    } on Exception catch (e) {
      CustomDialogBox.errorMessage(context, message: e.toString());
    } finally {
      context.loaderOverlay.hide();
    }
  }

  Future<void> fetchUoms() async {
    final uomRepo = context.read<UoMRepo>();
    await uomRepo.getAll();
    uomsNotifier.value = uomRepo.datas;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: Constant.minPadding,
          runSpacing: Constant.minPadding,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: [
            itemCodeField(),
            doubleField(
              header: "Quantity *",
              controller: quantityController,
              autovalidateMode: AutovalidateMode.always,
              onChanged: (v) {
                formBloc
                    .add(QuantityChanged(v.isEmpty ? null : double.parse(v)));
              },
              validator: (_) =>
                  formBloc.state.fQuantity.invalid ? "Required field!" : null,
            ),
            uomField(),
            doubleField(
              header: "Base Weight *",
              controller: baseWeightController,
              autovalidateMode: AutovalidateMode.always,
              onChanged: (v) {
                formBloc
                    .add(BaseWeightChanged(v.isEmpty ? null : double.parse(v)));
              },
              validator: (_) =>
                  formBloc.state.fBaseWeight.invalid ? "Required field!" : null,
            ),
            baseUomField(),
            doubleField(
              header: "Unbake dw/pc",
              controller: dwPcUnbakeController,
              onChanged: (v) {
                formBloc
                    .add(UnbakeDWChanged(v.isEmpty ? null : double.parse(v)));
              },
            ),
            doubleField(
              header: "Baked dw/pc",
              controller: dwPcBakedController,
              onChanged: (v) {
                formBloc
                    .add(BakedDWChanged(v.isEmpty ? null : double.parse(v)));
              },
            ),
            doubleField(
              header: "Total dw",
              controller: totalDoughWeightController,
              onChanged: (v) {
                formBloc
                    .add(TotalDWChanged(v.isEmpty ? null : double.parse(v)));
              },
            ),
          ],
        ),
        Constant.heightSpacer,
        Button(
            child: const Text("Add Row"),
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => BoMRowForm(
                  bloc: formBloc,
                ),
              );
            }),
        Constant.heightSpacer,
        const Expanded(child: BomFormTable()),
        Constant.heightSpacer,
        Button(
            onPressed:
                context.watch<CreateUpdateBoMBloc>().state.status.isValidated
                    ? () {
                        CustomDialogBox.warningMessage(context,
                            message: "Are you sure you want to proceed?",
                            onPositiveClick: (_) {
                          formBloc.add(ButtonSubmitted());
                        });
                      }
                    : null,
            child: Text(widget.selectedBomObj != null ? "Update" : "Add"))
      ],
    );
  }

  InfoLabel baseUomField() {
    return InfoLabel(
      label: "Base UoM *",
      child: SizedBox(
        width: minFieldWidth,
        child: ValueListenableBuilder(
          valueListenable: uomsNotifier,
          builder: (context, uoms, _) {
            return AutoSuggestBox.form(
              autovalidateMode: AutovalidateMode.always,
              controller: baseUomController,
              items: uoms
                  .map(
                    (e) => AutoSuggestBoxItem(
                      value: e.code,
                      label: e.code,
                      child: Text(
                        e.code,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value, reason) {
                String? baseUom = uoms
                    .firstWhereOrNull((element) => element.code == value)
                    ?.code;
                formBloc.add(BaseUomChanged(baseUom ?? ""));
              },
              validator: (_) =>
                  formBloc.state.fBaseUom.invalid ? "Invalid base uom" : null,
            );
          },
        ),
      ),
    );
  }

  SizedBox uomField() {
    return SizedBox(
      width: minFieldWidth,
      child: InfoLabel(
        label: "Uom",
        child: TextFormBox(
          enabled: false,
          controller: uomController,
        ),
      ),
    );
  }

  SizedBox doubleField({
    required String header,
    required TextEditingController controller,
    AutovalidateMode? autovalidateMode,
    Function(String)? onChanged,
    String? Function(String?)? validator,
  }) {
    return SizedBox(
      width: minFieldWidth,
      child: InfoLabel(
        label: header,
        child: TextFormBox(
          autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
          textAlign: TextAlign.right,
          controller: controller,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
          ],
          onChanged: onChanged,
          validator: validator,
        ),
      ),
    );
  }

  InfoLabel itemCodeField() {
    return InfoLabel(
      label: "Item Code *",
      child: SizedBox(
        width: maxFieldWidth,
        child: ValueListenableBuilder<List<ProductModel>>(
          valueListenable: forSaleProducts,
          builder: (context, products, _) {
            return AutoSuggestBox.form(
              autovalidateMode: AutovalidateMode.always,
              controller: itemCodeController,
              items: products
                  .map(
                    (e) => AutoSuggestBoxItem(
                      value: e.itemCode,
                      label: e.itemCode,
                      child: Text(
                        e.itemCode,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value, reason) {
                String? itemCode = products
                    .firstWhereOrNull((element) => element.itemCode == value)
                    ?.itemCode;
                String? uomCode = products
                    .firstWhereOrNull((element) => element.itemCode == value)
                    ?.uom;
                formBloc.add(ItemCodeChanged(itemCode ?? ""));
                formBloc.add(UomChanged(uomCode ?? ""));
                setState(() {
                  uomController.text = uomCode ?? "";
                });
              },
              validator: (_) {
                return formBloc.state.fItemCode.invalid
                    ? "Invalid Item Code"
                    : null;
              },
            );
          },
        ),
      ),
    );
  }
}
