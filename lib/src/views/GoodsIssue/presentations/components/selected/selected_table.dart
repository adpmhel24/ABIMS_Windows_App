import 'package:fluent_ui/fluent_ui.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../../data/models/table_col_model.dart';
import '../../../../../utils/currency_formater.dart';
import '../../../../../utils/date_formatter.dart';
import '../../../../widgets/custom_button.dart';
import '../../../data/models/selected_item/model.dart';

class SelectedItemTable extends StatefulWidget {
  const SelectedItemTable({super.key, this.selectedItems = const []});

  final List<SelectedItemModel> selectedItems;

  @override
  State<SelectedItemTable> createState() => _SelectedItemTableState();
}

class _SelectedItemTableState extends State<SelectedItemTable> {
  late SelectedDataSource dataSource;

  @override
  Widget build(BuildContext context) {
    dataSource = SelectedDataSource(context, datas: widget.selectedItems);

    return Card(
      child: SfDataGrid(
        source: dataSource,
        allowSorting: true,
        allowFiltering: true,
        allowMultiColumnSorting: true,
        navigationMode: GridNavigationMode.cell,
        allowColumnsResizing: true,
        isScrollbarAlwaysShown: true,
        allowPullToRefresh: true,
        columns: SelectedTableSettings.columns,
        columnWidthMode: ColumnWidthMode.auto,
        frozenColumnsCount: 1,
        onColumnResizeUpdate: (ColumnResizeUpdateDetails details) {
          var column = SelectedTableSettings.tableColumns
              .firstWhere((e) => e.colName == details.column.columnName);
          setState(() {
            column.width = details.width;
          });

          return true;
        },
      ),
    );
  }
}

class SelectedDataSource extends DataGridSource {
  late BuildContext cntx;
  List<SelectedItemModel> datas;
  List<DataGridRow> dataGridRows = [];

  SelectedDataSource(
    this.cntx, {
    required this.datas,
  }) {
    dataGridRows = datas.map((data) {
      return SelectedTableSettings.dataGrid(data);
    }).toList(growable: false);
  }

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>(
      (dataGridCell) {
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

class SelectedTableSettings {
  static final tableColumns = [
    ColumnModel(colName: "Item Code", width: double.nan, mapName: "item_code"),
    ColumnModel(colName: "Quantity", width: double.nan, mapName: "quantity"),
    ColumnModel(colName: "Warehosue", width: double.nan, mapName: "whsecode"),
    ColumnModel(colName: "UoM", width: double.nan, mapName: "uom"),
  ];

  static DataGridRow dataGrid(SelectedItemModel data) {
    return DataGridRow(
      cells: tableColumns.map(
        (e) {
          if (e.mapName == "item_code") {
            return DataGridCell<String>(
              columnName: e.colName,
              value: data.itemCode,
            );
          } else if (e.mapName == "quantity") {
            return DataGridCell<double>(
              columnName: e.colName,
              value: data.quantity,
            );
          } else if (e.mapName == "whsecode") {
            return DataGridCell<String>(
              columnName: e.colName,
              value: data.whsecode,
            );
          }
          return DataGridCell<String>(
            columnName: e.colName,
            value: data.uom,
          );
        },
      ).toList(),
    );
  }

  static List<GridColumn> get columns {
    return tableColumns.map(
      (e) {
        return GridColumn(
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
