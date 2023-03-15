import 'package:badges/badges.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../data/repositories/repos.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/custom_date_picker.dart';
import '../../../../shared/widgets/custom_filled_button.dart';
import '../../../../utils/constant.dart';
import '../../../widgets/selection_branch.dart';

typedef BaseWidgetBuilder = Widget Function(
  BuildContext context,
  TextEditingController startDateController,
  TextEditingController endDateController,
  TextEditingController branchController,
);

class BaseAdjustmentOut extends StatefulWidget {
  const BaseAdjustmentOut({
    super.key,
    required this.builder,
    this.onShowResult,
    this.onClear,
  });
  final BaseWidgetBuilder builder;
  final void Function(BuildContext context, String startDate, String endDate,
      String branch)? onShowResult;
  final VoidCallback? onClear;

  @override
  State<BaseAdjustmentOut> createState() => _BaseAdjustmentOutState();
}

class _BaseAdjustmentOutState extends State<BaseAdjustmentOut> {
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();
  final TextEditingController _branchController = TextEditingController();
  final ValueNotifier<int> filterCountNotifier = ValueNotifier(0);
  FlyoutPlacementMode placementMode = FlyoutPlacementMode.bottomRight;
  final menuController = FlyoutController();
  final menuAttachKey = GlobalKey();

  DateTime? startDate;
  DateTime? endDate;

  @override
  void initState() {
    _branchController.text = context.read<AuthRepo>().currentUser.branch ?? "";
    filterCountTrigger();
    super.initState();
  }

  @override
  void dispose() {
    _startDateController.dispose();
    _endDateController.dispose();
    _branchController.dispose();
    menuController.dispose();

    super.dispose();
  }

  void filterCountTrigger() {
    int startDateCount = _startDateController.text.isNotEmpty ? 1 : 0;
    int endDateCount = _endDateController.text.isNotEmpty ? 1 : 0;
    int branchCount = _branchController.text.isNotEmpty ? 1 : 0;

    filterCountNotifier.value = startDateCount + endDateCount + branchCount;
  }

  void clear() {
    _startDateController.clear();
    _endDateController.clear();
    _branchController.clear();
  }

  @override
  Widget build(BuildContext buildContext) {
    return Card(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StatefulBuilder(builder: (context, setState) {
          return Wrap(
            children: [
              _flyOutTarget(buildContext, setState),
              Constant.widthSpacer,
              Constant.widthSpacer,
              Text(
                  "Start Date: '${_startDateController.text}', End Date: '${_endDateController.text}', Branch: '${_branchController.text}'")
            ],
          );
        }),
        Expanded(
          child: widget.builder.call(
            context,
            _startDateController,
            _endDateController,
            _branchController,
          ),
        ),
      ],
    ));
  }

  FlyoutTarget _flyOutTarget(
      BuildContext buildContext, void Function(VoidCallback) setState) {
    return FlyoutTarget(
      controller: menuController,
      child: Badge(
        position: BadgePosition.topStart(),
        badgeContent: ValueListenableBuilder(
            valueListenable: filterCountNotifier,
            builder: (context, value, _) {
              return Text(value.toString());
            }),
        child: IconButton(
          icon: const Icon(FluentIcons.filter),
          onPressed: () async {
            menuController.showFlyout(
              autoModeConfiguration: FlyoutAutoConfiguration(
                preferredMode: placementMode,
              ),
              barrierDismissible: true,
              dismissWithEsc: true,
              builder: (context) {
                return FlyoutContent(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _startDatePicker(context, setState),
                          Constant.widthSpacer,
                          _endDatePicker(context, setState),
                        ],
                      ),
                      Constant.heightSpacer,
                      _branchFilter(context, setState),
                      Constant.heightSpacer,
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomFilledButton(
                            child: const Text("Show Result"),
                            onPressed: () {
                              widget.onShowResult?.call(
                                buildContext,
                                _startDateController.text,
                                _endDateController.text,
                                _branchController.text,
                              );
                              Flyout.of(context).close();
                            },
                          ),
                          Constant.widthSpacer,
                          Constant.widthSpacer,
                          CustomButton(
                            child: const Text("Clear"),
                            onPressed: () {
                              clear();
                              filterCountTrigger();
                              widget.onClear?.call();
                              Flyout.of(context).close();
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _branchFilter(
      BuildContext context, void Function(VoidCallback) setState) {
    return SizedBox(
      width: 200.0,
      child: InfoLabel(
        label: "Branch",
        child: TextFormBox(
          controller: _branchController,
          readOnly: true,
          suffix: IconButton(
              icon: const Icon(FluentIcons.clear),
              onPressed: () {
                setState(() {
                  _branchController.clear();
                });
                filterCountTrigger();
              }),
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => SelectionBranchDialogModal(
                onSelected: (v) {
                  setState(() {
                    _branchController.text = v.code;
                  });
                  filterCountTrigger();
                },
              ),
            );
          },
        ),
      ),
    );
  }

  // Row _fromBranchWhse(
  //   BuildContext context,
  //   FilterParamsNotifier notifier,
  // ) {
  //   return Row(
  //     mainAxisSize: MainAxisSize.min,
  //     children: [
  //       SizedBox(
  //         width: 200.0,
  //         child: InfoLabel(
  //           label: "From Branch",
  //           child: TextFormBox(
  //             controller: _fromBranchController,
  //             readOnly: true,
  //             suffix: IconButton(
  //               icon: const Icon(FluentIcons.clear),
  //               onPressed: _fromBranchController.text.isNotEmpty
  //                   ? () {
  //                       notifier.setFilterParams(notifier.filterParams
  //                           .copyWith(fromBranch: "", fromWhse: ""));

  //                       _fromBranchController.clear();
  //                       _fromWhseController.clear();
  //                     }
  //                   : null,
  //             ),
  //             onTap: () {
  //               showDialog(
  //                 context: context,
  //                 builder: (_) => SelectionBranchDialogModal(
  //                   onSelected: (v) {
  //                     notifier.setFilterParams(notifier.filterParams
  //                         .copyWith(fromBranch: v.code, fromWhse: ""));

  //                     _fromBranchController.text = v.code;
  //                   },
  //                 ),
  //               );
  //             },
  //           ),
  //         ),
  //       ),
  //       Constant.widthSpacer,
  //       SizedBox(
  //         width: 200.0,
  //         child: InfoLabel(
  //           label: "From Warehouse",
  //           child: TextFormBox(
  //             controller: _fromWhseController,
  //             readOnly: true,
  //             enabled: notifier.filterParams.fromBranch.isNotEmpty,
  //             suffix: IconButton(
  //               icon: const Icon(FluentIcons.clear),
  //               onPressed: _fromWhseController.text.isNotEmpty
  //                   ? () {
  //                       notifier.setFilterParams(
  //                           notifier.filterParams.copyWith(fromWhse: ""));
  //                       _fromWhseController.clear();
  //                     }
  //                   : null,
  //             ),
  //             onTap: () {
  //               showDialog(
  //                 context: context,
  //                 builder: (_) => SelectionWarehouseDialogModal(
  //                   branchCode: selectedFromBranch?.code,
  //                   onSelected: (v) {
  //                     notifier.setFilterParams(
  //                         notifier.filterParams.copyWith(fromWhse: v.whsecode));

  //                     _fromWhseController.text = v.whsecode;
  //                   },
  //                 ),
  //               );
  //             },
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  SizedBox _startDatePicker(
      BuildContext context, void Function(VoidCallback) setState) {
    return SizedBox(
      width: 200,
      child: InfoLabel(
        label: "Start Date",
        child: TextBox(
          controller: _startDateController,
          readOnly: true,
          suffix: IconButton(
            icon: const Icon(FluentIcons.clear),
            onPressed: _startDateController.text.isNotEmpty
                ? () {
                    setState(() {
                      startDate = null;
                      _startDateController.clear();
                    });
                    filterCountTrigger();
                  }
                : null,
          ),
          onTap: () {
            CustomDatePicker.singleDatePicker(
              context,
              initialSelectedDate: startDate,
              onSubmit: (value) {
                setState(() {
                  startDate = DateTime.tryParse(value.toString());
                  _startDateController.text = startDate != null
                      ? DateFormat("MM/dd/yyyy").format(startDate!)
                      : "";
                });
                filterCountTrigger();
              },
            );
          },
        ),
      ),
    );
  }

  SizedBox _endDatePicker(
      BuildContext context, void Function(VoidCallback) setState) {
    return SizedBox(
      width: 200,
      child: InfoLabel(
        label: "End Date",
        child: TextBox(
          controller: _endDateController,
          readOnly: true,
          suffix: IconButton(
            icon: const Icon(FluentIcons.clear),
            onPressed: _endDateController.text.isNotEmpty
                ? () {
                    setState(() {
                      endDate = null;
                      _endDateController.clear();
                    });
                    filterCountTrigger();
                  }
                : null,
          ),
          onTap: () {
            CustomDatePicker.singleDatePicker(
              context,
              initialSelectedDate: endDate,
              onSubmit: (value) {
                setState(() {
                  endDate = DateTime.tryParse(value.toString());
                  _endDateController.text = endDate != null
                      ? DateFormat("MM/dd/yyyy").format(endDate!)
                      : "";
                });

                filterCountTrigger();
              },
            );
          },
        ),
      ),
    );
  }
}
