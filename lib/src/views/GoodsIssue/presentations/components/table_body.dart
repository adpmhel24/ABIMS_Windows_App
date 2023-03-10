import 'package:fluent_ui/fluent_ui.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:flutter/material.dart' as m;

import 'datasource.dart';

class GoodsIssueTableBody extends StatefulWidget {
  const GoodsIssueTableBody({
    super.key,
    required this.dataPagerHeight,
    required this.dataGridController,
    required this.dataSource,
    // this.onSelect,
    // this.onDeselect,
  });

  final double dataPagerHeight;
  final DataGridController dataGridController;
  final GoodsIssueDataSource dataSource;
  // final void Function(GoodsIssueHeaderModel value)? onSelect;
  // final void Function(GoodsIssueHeaderModel value)? onDeselect;

  @override
  State<GoodsIssueTableBody> createState() => _GoodsIssueTableBodyState();
}

class _GoodsIssueTableBodyState extends State<GoodsIssueTableBody> {
  @override
  Widget build(BuildContext context) {
    return m.Material(
      child: SfDataGrid(
        controller: widget.dataGridController,
        source: widget.dataSource,
        allowSorting: true,
        allowFiltering: true,
        allowMultiColumnSorting: true,
        navigationMode: GridNavigationMode.cell,
        // showCheckboxColumn: true,
        selectionMode: SelectionMode.single,
        allowColumnsResizing: true,
        isScrollbarAlwaysShown: true,
        frozenColumnsCount: 2,
        allowPullToRefresh: true,
        columns: TableSettings.columns,
        columnWidthMode: ColumnWidthMode.auto,
        allowEditing: true,
        editingGestureType: EditingGestureType.tap,

        onColumnResizeUpdate: (ColumnResizeUpdateDetails details) {
          var column = TableSettings.tableColumns
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
