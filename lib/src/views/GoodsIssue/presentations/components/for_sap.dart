// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';
import 'package:clipboard/clipboard.dart';
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
import '../../data/repositories/repo_goods_issue.dart';
import '../blocs/fetching_bloc/bloc.dart';
import '../blocs/update_sap/bloc.dart';
import 'base.dart';
import 'datasource.dart';
import 'selected/selected_table.dart';
import 'table_body.dart';
import 'table_footer.dart';

class ForSapTab extends StatefulWidget {
  const ForSapTab({super.key});

  @override
  State<ForSapTab> createState() => _ForSapTabState();
}

class _ForSapTabState extends State<ForSapTab> {
  int _rowsPerPage = 20;
  late GoodsIssueDataSource _dataSource;
  final double _dataPagerHeight = 60.0;
  final List<int> availableRowsPerPage = [20, 50, 100, 1000];
  final DataGridController _dataGridController = DataGridController();
  final DataPagerController _pagerController = DataPagerController();
  late String? userBranch;

  final ValueNotifier<List<GoodsIssueHeaderModel>> _selectedNotifier =
      ValueNotifier([]);

  @override
  void initState() {
    userBranch = context.read<AuthRepo>().currentUser.branch;

    super.initState();
  }

  @override
  void dispose() {
    _pagerController.dispose();
    _dataGridController.dispose();
    _selectedNotifier.dispose();
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
    context.read<FetchingGoodsIssueBloc>().add(
          LoadAllGoodsIssue(
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
    context.read<FetchingGoodsIssueBloc>().add(
          LoadAllGoodsIssue(
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
    context.read<FetchingGoodsIssueBloc>().add(
          LoadAllGoodsIssue(
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
    context.read<FetchingGoodsIssueBloc>().add(
          LoadAllGoodsIssue(
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
    context.read<FetchingGoodsIssueBloc>().add(
          LoadAllGoodsIssue(
            {
              "is_for_sap": "True",
              "size": _rowsPerPage,
            },
          ),
        );
  }

  @override
  Widget build(BuildContext buildContext) {
    return RepositoryProvider(
      create: (context) => GoodsIssueRepo(
        localStorage: context.read<LocalStorageRepo>().localStorage,
      ),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                FetchingGoodsIssueBloc(context.read<GoodsIssueRepo>())
                  ..add(
                    LoadAllGoodsIssue({
                      "is_for_sap": "True",
                      "branch": userBranch,
                    }),
                  ),
          ),
          BlocProvider(
            create: (context) =>
                GoodsIssueUpdateSapBloc(context.read<GoodsIssueRepo>()),
          ),
        ],
        child: BlocListener<FetchingGoodsIssueBloc, FetchingGoodsIssueState>(
          listener: (context, state) async {
            // Listener for fetching goods issue
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
          child: BaseGoodsIssue(
            onShowResult: (context, startDate, endDate, branch) {
              _onShowResult(context,
                  startDate: startDate, endDate: endDate, branch: branch);
              _pagerController.selectedPageIndex = 0;
            },
            onClear: () {
              _onClearFilter(context);
              _pagerController.selectedPageIndex = 0;
            },
            builder: (_, startDate, endDate, branch) {
              return BlocBuilder<FetchingGoodsIssueBloc,
                  FetchingGoodsIssueState>(
                builder: (context, fetchingState) {
                  return BlocListener<GoodsIssueUpdateSapBloc,
                      GoodsIssueUpdateSapState>(
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
                        _onRefresh(context,
                            startDate: startDate.text,
                            endDate: endDate.text,
                            branch: branch.text);
                      }
                    },
                    child: LayoutBuilder(
                      builder: (builderContext, constraints) {
                        List<GoodsIssueHeaderModel> datas =
                            (fetchingState.result.data == null)
                                ? []
                                : List<GoodsIssueHeaderModel>.from(
                                    fetchingState.result.data!.map(
                                      (e) => GoodsIssueHeaderModel.fromJson(
                                        e.toJson(),
                                      ),
                                    ),
                                  ).toList();

                        _dataSource = GoodsIssueDataSource(
                          buildContext,
                          datas: datas,
                          rowsPerPage: _rowsPerPage,
                          selectedDatas: _selectedNotifier.value,
                          onPageChanged: (v) {
                            _onPageChanged(context,
                                page: v,
                                rowPerPage: _rowsPerPage,
                                startDate: startDate.text,
                                endDate: endDate.text,
                                branch: branch.text);
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

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  SizedBox(
                                    width: Responsive.isDesktop(buildContext)
                                        ? constraints.maxWidth * .60 - 10
                                        : constraints.maxWidth * .75 - 10,
                                    height: double.infinity,
                                    child: Card(
                                      child: LayoutBuilder(
                                        builder: (context, constraints) {
                                          double height =
                                              (constraints.maxHeight -
                                                  _dataPagerHeight);
                                          return Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              fetchingState.result.data != null
                                                  ? SizedBox(
                                                      height: height,
                                                      child:
                                                          GoodsIssueTableBody(
                                                        dataGridController:
                                                            _dataGridController,
                                                        dataPagerHeight:
                                                            _dataPagerHeight,
                                                        dataSource: _dataSource,
                                                      ),
                                                    )
                                                  : const SizedBox.expand(),
                                              GoodsIssueTableFooter(
                                                availableRowsPerPage:
                                                    availableRowsPerPage,
                                                dataPagerHeight:
                                                    _dataPagerHeight,
                                                dataSource: _dataSource,
                                                rowsPerPage: _rowsPerPage,
                                                pageController:
                                                    _pagerController,
                                                total: fetchingState.result
                                                        .pagination?.total ??
                                                    0,
                                                onRowsPerPageChanged: (v) {
                                                  setState(() {
                                                    _rowsPerPage = v!;
                                                    _dataSource
                                                        .updateDataGriDataSource();
                                                  });
                                                  _onPageSizeChanged.call(
                                                      context,
                                                      size: _rowsPerPage,
                                                      startDate: startDate.text,
                                                      endDate: endDate.text,
                                                      branch: branch.text);
                                                },
                                              )
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Constant.widthSpacer,
                                  SizedBox(
                                    width: Responsive.isDesktop(buildContext)
                                        ? constraints.maxWidth * .40
                                        : constraints.maxWidth * .75,
                                    height: double.infinity,
                                    child: ValueListenableBuilder<
                                        List<GoodsIssueHeaderModel>>(
                                      valueListenable: _selectedNotifier,
                                      builder: (_, selected, __) {
                                        List<SelectedItemModel> datas = [];
                                        for (var goodsIssue in selected) {
                                          for (GoodsIssueRowModel row
                                              in goodsIssue.issueRow ?? []) {
                                            final index = datas.indexWhere(
                                                (e) =>
                                                    e.itemCode ==
                                                        row.itemCode &&
                                                    e.whsecode == row.whsecode);
                                            if (index >= 0) {
                                              datas[index] =
                                                  datas[index].copyWith(
                                                quantity:
                                                    datas[index].quantity +
                                                        (row.quantity ?? 0),
                                              );
                                            } else {
                                              datas.add(SelectedItemModel(
                                                itemCode: row.itemCode ?? "",
                                                quantity: row.quantity ?? 0.00,
                                                uom: row.uom ?? "",
                                                whsecode: row.whsecode ?? "",
                                              ));
                                            }
                                          }
                                        }

                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: SelectedItemTable(
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
                                                    context, selected),
                                              ],
                                            )
                                          ],
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Constant.heightSpacer,
                            _selectAllCheckBox(),
                          ],
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _updateSapNumberButton(
      BuildContext context, List<GoodsIssueHeaderModel> selected) {
    return CustomFilledButton(
      onPressed: selected.isEmpty
          ? null
          : () {
              CustomDialogBox.sapNumberField(
                context,
                message: "Are you sure you want to proceed?",
                onPositiveClick: (_, sapNumber) {
                  List<int> ids = selected.map((e) => e.id!).toList();
                  context.read<GoodsIssueUpdateSapBloc>().add(
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
      List<SelectedItemModel> datas, BuildContext context) {
    return CustomButton(
      child: const Text("Copy"),
      onPressed: () async {
        List<String> toCopy = [];
        for (SelectedItemModel i in datas) {
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

  ValueListenableBuilder<List<GoodsIssueHeaderModel>> _selectAllCheckBox() {
    return ValueListenableBuilder(
      valueListenable: _selectedNotifier,
      builder: (context, selected, _) {
        bool? isAll = areListsEqual(
          selected: selected,
          currentDataInPage: _dataSource.datas,
        );
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

                _dataSource.datas = List<GoodsIssueHeaderModel>.from(_dataSource
                    .datas
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

  void _showCopiedSnackbar(BuildContext context) {
    showSnackbar(
      context,
      const Snackbar(
        content: Text("Copied"),
        extended: true,
      ),
    );
  }
}

bool? areListsEqual({
  required List<GoodsIssueHeaderModel> currentDataInPage,
  required List<GoodsIssueHeaderModel> selected,
}) {
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
