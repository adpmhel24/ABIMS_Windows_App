// ignore: depend_on_referenced_packages
import 'package:clipboard/clipboard.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../data/repositories/repos.dart';
import '../../../../shared/widgets/custom_dialog.dart';
import '../../../../utils/constant.dart';
import '../../../../utils/fetching_status.dart';
import '../../../../utils/responsive.dart';
import '../../../widgets/custom_button.dart';
import '../../data/models/header_model.dart';
import '../../data/models/row_model.dart';
import '../../data/models/selected_item/model.dart';
import '../../data/repositories/repo_adj_out.dart';
import '../blocs/fetching_bloc/bloc.dart';
import '../blocs/update_sap/bloc.dart';
import 'base.dart';
import 'datasource.dart';
import 'selected/selected_table.dart';
import 'table_body.dart';
import 'table_footer.dart';

class AdjustmentOutContent extends StatefulWidget {
  const AdjustmentOutContent({super.key});

  @override
  State<AdjustmentOutContent> createState() => _AdjustmentOutContentState();
}

class _AdjustmentOutContentState extends State<AdjustmentOutContent> {
  int _rowsPerPage = 20;
  late InvAdjOutDataSource _dataSource;
  final double _dataPagerHeight = 60.0;
  final List<int> _availableRowsPerPage = [20, 50, 100, 1000];
  final DataGridController _dataGridController = DataGridController();
  final DataPagerController _pagerController = DataPagerController();

  late String? userBranch;
  @override
  void initState() {
    userBranch = context.read<AuthRepo>().currentUser.branch;

    super.initState();
  }

  final ValueNotifier<List<InvAdjustmentOutHeaderModel>> _selectedNotifier =
      ValueNotifier([]);

  @override
  void dispose() {
    _selectedNotifier.dispose();
    _dataGridController.dispose();
    _pagerController.dispose();
    super.dispose();
  }

  void _clearSelected() {
    _selectedNotifier.value = [];
  }

  void _onPageChanged(BuildContext context,
      {required int rowPerPage,
      required int page,
      required String startDate,
      required String endDate,
      required String branch}) {
    context.read<FetchingAdjustmentOutBloc>().add(
          LoadAllInvAdjOut(
            {
              "is_for_sap": "True",
              "from_date": startDate,
              "to_date": endDate,
              "branch": branch,
              "size": rowPerPage,
              "page": page,
            },
          ),
        );
  }

  void _onPageSizeChanged(BuildContext context,
      {required int size,
      required String startDate,
      required String endDate,
      required String branch}) {
    setState(() {
      _rowsPerPage = size;
      _dataSource.updateDataGriDataSource();
    });
    context.read<FetchingAdjustmentOutBloc>().add(
          LoadAllInvAdjOut(
            {
              "is_for_sap": "True",
              "from_date": startDate,
              "to_date": endDate,
              "branch": branch,
              "size": size,
            },
          ),
        );
  }

  void _onRefresh(BuildContext context,
      {required String startDate,
      required String endDate,
      required String branch}) {
    _clearSelected();

    _pagerController.selectedPageIndex = 0;
    context.read<FetchingAdjustmentOutBloc>().add(
          LoadAllInvAdjOut(
            {
              "is_for_sap": "True",
              "from_date": startDate,
              "to_date": endDate,
              "branch": branch,
              "size": _rowsPerPage,
            },
          ),
        );
  }

  void _onShowResult(BuildContext context,
      {required String startDate,
      required String endDate,
      required String branch}) {
    _clearSelected();
    _pagerController.selectedPageIndex = 0;

    context.read<FetchingAdjustmentOutBloc>().add(
          LoadAllInvAdjOut(
            {
              "is_for_sap": "True",
              "from_date": startDate,
              "to_date": endDate,
              "branch": branch,
              "size": _rowsPerPage,
            },
          ),
        );
  }

  void _onClearFilter(
    BuildContext context,
  ) {
    _clearSelected();
    _pagerController.selectedPageIndex = 0;

    context.read<FetchingAdjustmentOutBloc>().add(
          LoadAllInvAdjOut(
            {
              "is_for_sap": "True",
              "size": _rowsPerPage,
            },
          ),
        );
  }

  _providers() => [
        BlocProvider(
          create: (context) => FetchingAdjustmentOutBloc(
            context.read<AdjustmentOutRepo>(),
          )..add(
              LoadAllInvAdjOut(
                {"is_for_sap": "True", "branch": userBranch ?? ""},
              ),
            ),
        ),
        BlocProvider(
          create: (context) => InvAdjOutUpdateSapBloc(
            context.read<AdjustmentOutRepo>(),
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => AdjustmentOutRepo(
          localStorage: context.read<LocalStorageRepo>().localStorage),
      child: MultiBlocProvider(
        providers: _providers(),
        child:
            BlocListener<FetchingAdjustmentOutBloc, FetchingAdjustmentOutState>(
          listener: (context, state) {
            // Listener for fetching Inv adjustment out
            if (state.status == FetchingStatus.loading) {
              context.loaderOverlay.show();
            } else if (state.status == FetchingStatus.error) {
              context.loaderOverlay.hide();

              CustomDialogBox.errorMessage(context,
                  message: state.statusMessage);
            } else if (state.status == FetchingStatus.success) {
              context.loaderOverlay.hide();
            }
          },
          child: BaseAdjustmentOut(
            onClear: () {
              _onClearFilter(context);
            },
            onShowResult: (context, startDate, endDate, branch) {
              _onShowResult(context,
                  startDate: startDate, endDate: endDate, branch: branch);
            },
            builder: (
              context,
              startDateController,
              endDateController,
              branchController,
            ) {
              return BlocListener<InvAdjOutUpdateSapBloc,
                  InvAdjOutUpdateSapState>(
                listener: (context, state) {
                  if (state.status.isSubmissionInProgress) {
                    context.loaderOverlay.show();
                  } else if (state.status.isSubmissionFailure) {
                    context.loaderOverlay.hide();
                    CustomDialogBox.errorMessage(context,
                        message: state.statusMessage);
                  } else if (state.status.isSubmissionSuccess) {
                    context.loaderOverlay.hide();
                    showSnackbar(
                      context,
                      Snackbar(
                        content: Text(state.statusMessage),
                        extended: true,
                      ),
                    );
                    _onRefresh(
                      context,
                      startDate: startDateController.text,
                      endDate: endDateController.text,
                      branch: branchController.text,
                    );
                  }
                },
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return BlocBuilder<FetchingAdjustmentOutBloc,
                        FetchingAdjustmentOutState>(
                      builder: (context, state) {
                        List<InvAdjustmentOutHeaderModel> datas =
                            (state.result.data == null)
                                ? []
                                : List<InvAdjustmentOutHeaderModel>.from(
                                    state.result.data!.map(
                                      (e) =>
                                          InvAdjustmentOutHeaderModel.fromJson(
                                        e.toJson(),
                                      ),
                                    ),
                                  ).toList();

                        _dataSource = InvAdjOutDataSource(
                          context,
                          datas: datas,
                          rowsPerPage: _rowsPerPage,
                          selectedDatas: _selectedNotifier.value,
                          onPageChanged: (v) {
                            _onPageChanged(context,
                                page: v,
                                rowPerPage: _rowsPerPage,
                                startDate: startDateController.text,
                                endDate: endDateController.text,
                                branch: branchController.text);
                          },
                          onSelected: (v) {
                            _selectedNotifier.value = [
                              ..._selectedNotifier.value,
                              v
                            ];
                          },
                          onDeselected: (v) {
                            var currentSelected = [..._selectedNotifier.value];
                            int index =
                                currentSelected.indexWhere((e) => e.id == v.id);
                            if (index >= 0) {
                              currentSelected.removeAt(index);
                            }
                            _selectedNotifier.value = currentSelected;
                          },
                          onRefresh: () {},
                        );
                        return ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? (constraints.maxWidth * .6) - 10
                                  : (constraints.maxHeight * .75) - 10,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: InvAdjOutTableBody(
                                      dataGridController: _dataGridController,
                                      dataPagerHeight: _dataPagerHeight,
                                      dataSource: _dataSource,
                                    ),
                                  ),
                                  InvAdjOutTableFooter(
                                    availableRowsPerPage: _availableRowsPerPage,
                                    dataPagerHeight: _dataPagerHeight,
                                    dataSource: _dataSource,
                                    pageController: _pagerController,
                                    rowsPerPage: _rowsPerPage,
                                    onRowsPerPageChanged: (size) {
                                      _onPageSizeChanged.call(
                                        context,
                                        size: size ?? 20,
                                        startDate: startDateController.text,
                                        endDate: endDateController.text,
                                        branch: branchController.text,
                                      );
                                    },
                                  ),
                                  _selectAllCheckBox(),
                                ],
                              ),
                            ),
                            Constant.widthSpacer,
                            SizedBox(
                              width: constraints.maxWidth * .4,
                              height: double.infinity,
                              child: ValueListenableBuilder(
                                  valueListenable: _selectedNotifier,
                                  builder: (context, selected, _) {
                                    List<SelectedInvAdjItemModel> datas = [];
                                    for (var header in selected) {
                                      for (InvAdjustmentOutRowModel row
                                          in header.rows ?? []) {
                                        final index = datas.indexWhere((e) =>
                                            e.itemCode == row.itemCode &&
                                            e.whsecode == row.whsecode);
                                        if (index >= 0) {
                                          datas[index] = datas[index].copyWith(
                                            quantity: datas[index].quantity +
                                                (row.quantity ?? 0),
                                          );
                                        } else {
                                          datas.add(SelectedInvAdjItemModel(
                                            itemCode: row.itemCode ?? "",
                                            quantity: row.quantity ?? 0.00,
                                            uom: row.uom ?? "",
                                            whsecode: row.whsecode ?? "",
                                          ));
                                        }
                                      }
                                    }
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: InvAdjOutSelectedItemTable(
                                            selectedItems: datas,
                                          ),
                                        ),
                                        Constant.heightSpacer,
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            _copyButton(datas, context),
                                            Constant.widthSpacer,
                                            _updateSapNumberButton(
                                              context,
                                              selected,
                                            )
                                          ],
                                        )
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _updateSapNumberButton(
      BuildContext context, List<InvAdjustmentOutHeaderModel> selected) {
    return CustomFilledButton(
      onPressed: selected.isEmpty
          ? null
          : () {
              CustomDialogBox.sapNumberField(
                context,
                message: "Are you sure you want to proceed?",
                onPositiveClick: (_, sapNumber) {
                  List<int> ids = selected.map((e) => e.id!).toList();
                  context.read<InvAdjOutUpdateSapBloc>().add(
                        ButtonSubmitted(
                            ids: ids, sapNumber: int.tryParse(sapNumber) ?? 1),
                      );
                },
              );
            },
      child: const Text("Update SAP"),
    );
  }

  CustomButton _copyButton(
      List<SelectedInvAdjItemModel> datas, BuildContext context) {
    return CustomButton(
      child: const Text("Copy"),
      onPressed: () async {
        List<String> toCopy = [];
        for (SelectedInvAdjItemModel i in datas) {
          toCopy.add(i.toJson().values.toList().join("\t"));
        }
        final copyText = toCopy.join("\n");
        await FlutterClipboard.copy(copyText);
        if (mounted) {
          _showCopiedSnackbar(
            context,
          );
        }
      },
    );
  }

  void _showCopiedSnackbar(BuildContext context) {
    showSnackbar(
      context,
      const Snackbar(
        content: Text("Copied"),
        extended: true,
      ),
    );
  }

  ValueListenableBuilder<List<InvAdjustmentOutHeaderModel>>
      _selectAllCheckBox() {
    return ValueListenableBuilder(
      valueListenable: _selectedNotifier,
      builder: (context, selected, _) {
        bool? isAll = areListsEqual(_dataSource.datas, selected);
        return Checkbox(
          checked: isAll,
          onChanged: (v) {
            var selectedData = [...selected];
            if (v != null) {
              if (v) {
                for (int i = 0; i < _dataSource.datas.length; i++) {
                  if (!_dataSource.datas[i].isSelected) {
                    _dataSource.datas[i] =
                        _dataSource.datas[i].copyWith(isSelected: true);
                    _dataSource.notifyListeners();
                    selectedData.add(_dataSource.datas[i]);
                  }
                }
              } else if (!v) {
                for (var i in _dataSource.datas) {
                  selectedData.remove(i);
                }

                _dataSource.datas = List<InvAdjustmentOutHeaderModel>.from(
                    _dataSource.datas
                        .map((e) => e.copyWith(isSelected: false))).toList();
                _dataSource.notifyListeners();
              }
            }
            _selectedNotifier.value = [
              ...selectedData,
            ];
          },
          content: const Text("Select All"),
        );
      },
    );
  }
}

bool? areListsEqual(List<InvAdjustmentOutHeaderModel> currentDataInPage,
    List<InvAdjustmentOutHeaderModel> selected) {
  if (selected.isEmpty || currentDataInPage.isEmpty) {
    return false;
  }

  for (var i in currentDataInPage) {
    var isInList2 = selected.firstWhereOrNull((e) => e.id == i.id);
    if (isInList2 == null) {
      return false;
    }
  }

  return true;
}
