import 'package:fluent_ui/fluent_ui.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

import '../../../../data/models/table_col_model.dart';
import '../../../../utils/constant.dart';
import '../../../../utils/currency_formater.dart';
import '../../../../utils/date_formatter.dart';
import '../../../widgets/custom_button.dart';
import '../../data/models/header_model.dart';
import '../blocs/fetching_bloc/bloc.dart';
import 'details/details.dart';

class GoodsIssueDataSource extends DataGridSource {
  late BuildContext cntx;
  List<GoodsIssueHeaderModel> datas;
  List<GoodsIssueHeaderModel>? selectedDatas;
  int endIndex = 0;
  int rowsPerPage;
  List<DataGridRow> dataGridRows = [];
  final VoidCallback? onRefresh;
  final void Function(int) onPageChanged;
  final void Function(GoodsIssueHeaderModel)? onSelected;
  final void Function(GoodsIssueHeaderModel)? onDeselected;
  late FetchingGoodsIssueBloc bloc;

  GoodsIssueDataSource(
    this.cntx, {
    required this.datas,
    required this.rowsPerPage,
    this.selectedDatas = const [],
    this.onRefresh,
    required this.onPageChanged,
    this.onDeselected,
    this.onSelected,
  }) {
    if (datas.length < endIndex) {
      endIndex = datas.length;
    }
    // bloc = cntx.read<FetchingDirectSalesBloc>();
    dataGridRows = datas.asMap().entries.map((dataEntries) {
      int indx = dataEntries.key;
      GoodsIssueHeaderModel data = dataEntries.value;
      GoodsIssueHeaderModel? selectedData =
          selectedDatas?.firstWhereOrNull((e) => e.id == data.id);

      datas[indx] = data.copyWith(isSelected: selectedData != null);

      return TableSettings.dataGrid(datas[indx].toJson());
    }).toList(growable: false);
  }

  @override
  Future<void> handleRefresh() async {
    onRefresh?.call();
    notifyListeners();
  }

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  Future<bool> handlePageChange(int oldPageIndex, int newPageIndex) async {
    if (newPageIndex != oldPageIndex) {
      onPageChanged.call(newPageIndex + 1);
    }
    notifyListeners();

    return true;
  }

  void updateDataGriDataSource() {
    notifyListeners();
  }

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>(
      (dataGridCell) {
        if (dataGridCell.columnName == 'Selected') {
          int index =
              datas.indexWhere((element) => element.id == dataGridCell.value);
          return Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(Constant.minPadding),
            child: Checkbox(
              checked: datas[index].isSelected,
              onChanged: (v) {
                datas[index] = datas[index].copyWith(isSelected: v!);

                if (v) {
                  onSelected?.call(datas[index]);
                } else {
                  onDeselected?.call(datas[index]);
                }

                notifyListeners();
              },
            ),
          );
        } else if (dataGridCell.columnName == 'Details') {
          return Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.all(Constant.minPadding),
            child: IconButton(
              icon: const Icon(FluentIcons.view),
              onPressed: () {
                int index = datas
                    .indexWhere((element) => element.id == dataGridCell.value);
                showDialog(
                  context: cntx,
                  builder: (context) {
                    return ContentDialog(
                      constraints:
                          const BoxConstraints(maxHeight: 450, maxWidth: 800),
                      actions: [
                        CustomButton(
                            child: const Text("Close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            })
                      ],
                      content: GoodsIssueDetailsDialog(
                        details: datas[index].issueRow!,
                      ),
                    );
                  },
                );
              },
            ),
          );
        }
        return Container(
          alignment: dataGridCell.value.runtimeType == double ||
                  dataGridCell.value.runtimeType == int
              ? Alignment.centerRight
              : Alignment.centerLeft,
          padding: const EdgeInsets.all(5.0),
          child: dataGridCell.value.runtimeType == String
              ? (dataGridCell.value.isNotEmpty
                  ? CopyButton(value: dataGridCell.value.toString())
                  : null)
              : dataGridCell.value.runtimeType == double ||
                      dataGridCell.value.runtimeType == int
                  ? CopyButton(
                      value: formatStringToDecimal("${dataGridCell.value}"))
                  : dataGridCell.value.runtimeType == DateTime
                      ? CopyButton(value: dateFormatter(dataGridCell.value))
                      : dataGridCell.value,
        );
      },
    ).toList());
  }
}

class TableSettings {
  static final tableColumns = [
    ColumnModel(colName: "Selected", width: double.nan, mapName: "id"),
    ColumnModel(colName: "Reference", width: double.nan, mapName: "reference"),
    ColumnModel(
        colName: "Transaction date", width: double.nan, mapName: "transdate"),
    ColumnModel(colName: "Remarks", width: double.nan, mapName: "remarks"),
    ColumnModel(colName: "Details", width: double.nan, mapName: "id"),
  ];

  static DataGridRow dataGrid(Map<String, dynamic> data) {
    return DataGridRow(
      cells: tableColumns.map(
        (e) {
          if (e.mapName.contains("date")) {
            return DataGridCell<DateTime?>(
              columnName: e.colName,
              value: DateTime.tryParse(data[e.mapName] ?? ""),
            );
          } else if (e.mapName == "details") {
            return DataGridCell(
              columnName: e.colName,
              value: data[e.mapName],
            );
          }
          return DataGridCell(
            columnName: e.colName,
            value: data[e.mapName],
          );
        },
      ).toList(),
    );
  }

  static List<GridColumn> get columns {
    return tableColumns.map(
      (e) {
        if (e.colName == "Total Payment") {
          return GridColumn(
            allowEditing: true,
            width: e.width,
            columnName: e.colName,
            label: Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: Text(
                e.colName,
                style: const TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          );
        }
        return GridColumn(
          allowEditing: false,
          width: e.width,
          columnName: e.colName,
          label: Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.centerLeft,
            child: Text(
              e.colName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    ).toList();
  }
}
