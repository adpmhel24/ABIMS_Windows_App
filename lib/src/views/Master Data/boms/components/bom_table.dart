import '/src/data/models/bom/model.dart';
import '/src/views/Master%20Data/boms/blocs/fetch_bloc/bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as m;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../router/router.gr.dart';
import '../../../../utils/constant.dart';
import '../../../../utils/currency_formater.dart';

class BoMsTable extends StatefulWidget {
  const BoMsTable({
    Key? key,
    required this.bomsObj,
  }) : super(key: key);

  final List<BoMModel> bomsObj;
  @override
  State<BoMsTable> createState() => _BoMsTableState();
}

class _BoMsTableState extends State<BoMsTable> {
  late DataSource _dataSource;
  late int _rowsPerPage = 10;
  final int _startIndex = 0;
  final int _endIndex = 10; // this should be equal to rows per page

  final double _dataPagerHeight = 60.0;
  @override
  Widget build(BuildContext context) {
    _dataSource = DataSource(
      context,
      datas: widget.bomsObj,
      startIndex: _startIndex,
      endIndex: _endIndex,
      rowsPerPage: _rowsPerPage,
    );
    return Card(
      child: LayoutBuilder(
        builder: (context, constraint) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              tableBody(constraint),
              tableFooter(widget.bomsObj.length),
            ],
          );
        },
      ),
    );
  }

  SizedBox tableBody(BoxConstraints constraint) {
    double height = (constraint.maxHeight - _dataPagerHeight);
    return height < 0
        ? const SizedBox.expand()
        : SizedBox(
            height: height,
            width: constraint.maxWidth,
            child: SfDataGrid(
              // key: widget.sfDataGridKey,
              source: _dataSource,
              allowSorting: true,
              allowMultiColumnSorting: true,
              allowFiltering: true,
              selectionMode: SelectionMode.single,
              navigationMode: GridNavigationMode.cell,
              allowColumnsResizing: true,
              isScrollbarAlwaysShown: true,
              allowPullToRefresh: true,
              columns: TableSettings.columns,
              columnWidthMode: ColumnWidthMode.auto,
              onColumnResizeUpdate: (ColumnResizeUpdateDetails details) {
                var column = TableSettings.columnName
                    .firstWhere((e) => e.name == details.column.columnName);
                setState(() {
                  column.width = details.width;
                });

                return true;
              },
            ),
          );
  }

  SizedBox tableFooter(int itemCount) {
    return SizedBox(
      height: _dataPagerHeight,
      child: SfDataPager(
        delegate: _dataSource,
        pageCount: itemCount <= 0
            ? 1
            : (itemCount / _rowsPerPage) +
                ((itemCount % _rowsPerPage) > 0 ? 1 : 0),
        direction: Axis.horizontal,
        availableRowsPerPage: const [10, 20, 30],
        onRowsPerPageChanged: (int? rowsPerPage) {
          setState(() {
            _rowsPerPage = rowsPerPage!;
            _dataSource.updateDataGriDataSource();
          });
        },
      ),
    );
  }
}

class DataSource extends DataGridSource {
  late BuildContext cntx;
  List<BoMModel> datas;
  late List<BoMModel> paginatedDatas;
  int startIndex;
  int endIndex;
  int rowsPerPage;
  List<DataGridRow> dataGridRows = [];

  DataSource(
    this.cntx, {
    required this.datas,
    required this.startIndex,
    required this.endIndex,
    required this.rowsPerPage,
  }) {
    if (datas.length < endIndex) {
      endIndex = datas.length;
    }
    paginatedDatas =
        datas.getRange(startIndex, endIndex).toList(growable: false);
    buildPaginatedDataGridRows();
  }

  void buildPaginatedDataGridRows() {
    dataGridRows = paginatedDatas.map((data) {
      return TableSettings.dataGrid(data);
    }).toList(growable: false);
  }

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  Future<bool> handlePageChange(int oldPageIndex, int newPageIndex) async {
    startIndex = newPageIndex * rowsPerPage;
    endIndex = startIndex + rowsPerPage;
    if (startIndex < datas.length && endIndex <= datas.length) {
      paginatedDatas =
          datas.getRange(startIndex, endIndex).toList(growable: false);
      buildPaginatedDataGridRows();
      notifyListeners();
    } else if (startIndex < datas.length && endIndex > datas.length) {
      paginatedDatas =
          datas.getRange(startIndex, datas.length).toList(growable: false);
      buildPaginatedDataGridRows();
      notifyListeners();
    } else {
      paginatedDatas = [];
    }

    return true;
  }

  void updateDataGriDataSource() {
    notifyListeners();
  }

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      final int dataRowIndex = dataGridRows.indexOf(row);

      if (dataGridCell.columnName == 'Item Code') {
        return Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(Constant.minPadding),
          child: Row(
            children: [
              m.Material(
                child: m.InkWell(
                  onTap: () {
                    cntx.router.navigate(
                      BillOfMaterialWrapperRoute(
                        children: [
                          BillOfMaterialFormRoute(
                            selectedBoMObj: paginatedDatas[dataRowIndex],
                            onRefresh: () =>
                                cntx.read<FetchBoMsBloc>().add(LoadBoMs()),
                          ),
                        ],
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    "assets/icons/sm_right_arrow.svg",
                    color: Colors.green,
                  ),
                ),
              ),
              Flexible(child: SelectableText(dataGridCell.value)),
            ],
          ),
        );
      }
      return Container(
        alignment: dataGridCell.value.runtimeType == double
            ? Alignment.centerRight
            : Alignment.centerLeft,
        padding: const EdgeInsets.all(16.0),
        child: dataGridCell.value.runtimeType == String
            ? SelectableText(dataGridCell.value)
            : dataGridCell.value.runtimeType == double
                ? SelectableText(formatStringToDecimal('${dataGridCell.value}'))
                : dataGridCell.value,
      );
    }).toList());
  }
}

class ColumnName {
  String name;
  double width;

  ColumnName({required this.name, required this.width});
}

class TableSettings {
  static List<ColumnName> columnName = [
    ColumnName(name: "Item Code", width: double.nan),
    ColumnName(name: "Quantity", width: double.nan),
    ColumnName(name: "UoM", width: double.nan),
    ColumnName(name: "Base Weight", width: double.nan),
    ColumnName(name: "Base UoM", width: double.nan),
    ColumnName(name: "Total Dough Weight", width: double.nan),
    ColumnName(name: "Unbake Dough Weight / pc", width: double.nan),
    ColumnName(name: "Baked Dough Weight / pc", width: double.nan),
  ];

  static DataGridRow dataGrid(BoMModel bomOBj) {
    return DataGridRow(
      cells: [
        DataGridCell<String>(
          columnName: columnName[0].name,
          value: bomOBj.itemCode,
        ),
        DataGridCell<double>(
          columnName: columnName[1].name,
          value: bomOBj.quantity,
        ),
        DataGridCell<String>(
          columnName: columnName[2].name,
          value: bomOBj.uom,
        ),
        DataGridCell<double>(
          columnName: columnName[3].name,
          value: bomOBj.baseWeight,
        ),
        DataGridCell<String>(
          columnName: columnName[4].name,
          value: bomOBj.baseUom,
        ),
        DataGridCell<double>(
          columnName: columnName[5].name,
          value: bomOBj.tdw,
        ),
        DataGridCell<double>(
          columnName: columnName[6].name,
          value: bomOBj.dwPcUnbake,
        ),
        DataGridCell<double>(
          columnName: columnName[7].name,
          value: bomOBj.dwPcBaked,
        ),
      ],
    );
  }

  static List<GridColumn> get columns {
    return columnName.map(
      (e) {
        return GridColumn(
          width: e.width,
          columnName: e.name,
          label: Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.centerLeft,
            child: Text(
              e.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    ).toList();
  }
}
