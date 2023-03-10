import 'dart:io';
import 'package:auto_route/auto_route.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../../data/models/bom/row.dart';
import '../../../../data/models/models.dart';
import '../../../../data/repositories/repos.dart';
import '../../../../shared/widgets/custom_dialog.dart';
import '../../../../utils/constant.dart';
import '../../../../utils/responsive.dart';
import '../blocs/create_update_bloc/bloc.dart';

class BoMRowForm extends StatefulWidget {
  const BoMRowForm({
    Key? key,
    this.selectedRow,
    this.selectedIndex,
    required this.bloc,
  }) : super(key: key);
  final BoMRowModel? selectedRow;
  final int? selectedIndex;
  final CreateUpdateBoMBloc bloc;
  @override
  State<BoMRowForm> createState() => _BoMRowFormState();
}

class _BoMRowFormState extends State<BoMRowForm> {
  final ValueNotifier<List<ProductModel>> productsNotifier = ValueNotifier([]);

  final TextEditingController itemCodeController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController uomController = TextEditingController();

  String? selectedItemCode;
  String? selectedUom;
  double? quantity;
  @override
  void initState() {
    if (widget.selectedRow != null) {
      itemCodeController.text = widget.selectedRow!.itemCode;
      quantityController.text = widget.selectedRow!.quantity.toStringAsFixed(2);
      uomController.text = widget.selectedRow!.uom;
      selectedItemCode = itemCodeController.text;
      selectedUom = uomController.text;
    }

    loadInitialData();
    super.initState();
  }

  @override
  void dispose() {
    productsNotifier.dispose();
    itemCodeController.dispose();
    quantityController.dispose();
    uomController.dispose();
    super.dispose();
  }

  void loadInitialData() async {
    context.loaderOverlay.show();

    try {
      await fetchProducts();
    } on HttpException catch (e) {
      CustomDialogBox.errorMessage(context, message: e.message);
    } on Exception catch (e) {
      CustomDialogBox.errorMessage(context, message: e.toString());
    } finally {
      context.loaderOverlay.hide();
    }
  }

  Future<void> fetchProducts([bool refresh = false]) async {
    final repo = context.read<ProductRepo>();
    if (repo.datas.isEmpty || refresh) {
      await repo.getAll();
    }
    productsNotifier.value = repo.datas
        .where((e) =>
            e.itemGroup == "Raw Materials" ||
            e.itemGroup == "Intermediate Goods" ||
            e.itemGroup == "Premix" ||
            e.itemGroup == "Packaging Materials")
        .toList();
  }

  void refreshProducts() async {
    context.loaderOverlay.show();

    try {
      await fetchProducts(true);
    } on HttpException catch (e) {
      CustomDialogBox.errorMessage(context, message: e.message);
    } on Exception catch (e) {
      CustomDialogBox.errorMessage(context, message: e.toString());
    } finally {
      context.loaderOverlay.hide();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ContentDialog(
      title: const Text("BoM Row Form"),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * .6,
        maxWidth: Responsive.isMobile(context)
            ? MediaQuery.of(context).size.width
            : 600,
      ),
      actions: [
        Button(
          child: const Text("Close"),
          onPressed: () => context.router.pop(),
        ),
        FilledButton(
          onPressed: (selectedUom != null &&
                  selectedItemCode != null &&
                  quantityController.text.isNotEmpty)
              ? () {
                  CustomDialogBox.warningMessage(context,
                      message: "Are you sure you want to proceed?",
                      onPositiveClick: (_) {
                    if (widget.selectedIndex != null) {
                      widget.bloc.add(
                        BomRowUpdated(
                          index: widget.selectedIndex!,
                          value: BoMRowModel(
                            id: widget.selectedRow?.id,
                            bomId: widget.selectedRow?.bomId,
                            itemCode: selectedItemCode!,
                            quantity: double.parse(quantityController.text),
                            uom: selectedUom!,
                          ),
                        ),
                      );
                    } else {
                      widget.bloc.add(
                        BomRowAdded(
                          BoMRowModel(
                            itemCode: selectedItemCode!,
                            quantity: double.parse(quantityController.text),
                            uom: selectedUom!,
                          ),
                        ),
                      );
                    }
                    Navigator.of(context).pop();
                  });
                }
              : null,
          child: Text((widget.selectedIndex != null) ? "Update" : "Add"),
        )
      ],
      content: ListView(
        children: [
          itemCodeField(),
          Constant.heightSpacer,
          Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: InfoLabel(
                  label: "Quantity *",
                  child: TextFormBox(
                    controller: quantityController,
                    autovalidateMode: AutovalidateMode.always,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(
                          RegExp(r'^\d+\.?\d{0,2}')),
                    ],
                    onChanged: (v) {
                      setState(() {
                        quantity = double.parse(v);
                      });
                    },
                    validator: (_) => quantityController.text.isEmpty
                        ? "Required field."
                        : null,
                  ),
                ),
              ),
              Constant.widthSpacer,
              Flexible(
                child: InfoLabel(
                  label: "UoM",
                  child: TextBox(
                    controller: uomController,
                    enabled: false,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  InfoLabel itemCodeField() {
    return InfoLabel(
      label: "Item Code",
      child: ValueListenableBuilder<List<ProductModel>>(
        valueListenable: productsNotifier,
        builder: (_, products, __) {
          return AutoSuggestBox.form(
            autovalidateMode: AutovalidateMode.always,
            controller: itemCodeController,
            trailingIcon: IconButton(
              icon: const Icon(FluentIcons.refresh),
              onPressed: () {
                refreshProducts();
              },
            ),
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
            onChanged: (value, r) {
              String? itemCode = products
                  .firstWhereOrNull((element) => element.itemCode == value)
                  ?.itemCode;
              String? uomCode = products
                  .firstWhereOrNull((element) => element.itemCode == value)
                  ?.uom;
              selectedItemCode = itemCode;
              selectedUom = uomCode;
              setState(
                () {
                  uomController.text = uomCode ?? "";
                },
              );
            },
            validator: (_) =>
                selectedItemCode == null ? "Invalid item code." : null,
          );
        },
      ),
    );
  }
}
