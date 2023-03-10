import '/src/views/GoodsIssue/presentations/components/datasource.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class GoodsIssueTableFooter extends StatefulWidget {
  const GoodsIssueTableFooter({
    super.key,
    this.total,
    this.onRowsPerPageChanged,
    required this.dataSource,
    required this.dataPagerHeight,
    required this.rowsPerPage,
    required this.availableRowsPerPage,
    required this.pageController,
  });
  final int? total;
  final void Function(int?)? onRowsPerPageChanged;
  final GoodsIssueDataSource dataSource;
  final double dataPagerHeight;
  final int rowsPerPage;
  final List<int> availableRowsPerPage;
  final DataPagerController pageController;

  @override
  State<GoodsIssueTableFooter> createState() => _GoodsIssueTableFooterState();
}

class _GoodsIssueTableFooterState extends State<GoodsIssueTableFooter> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.dataPagerHeight,
      child: SfDataPager(
        controller: widget.pageController,
        delegate: widget.dataSource,
        pageCount: (widget.total ?? 0) <= 0
            ? 1
            : (widget.total! / widget.rowsPerPage) +
                ((widget.total! % widget.rowsPerPage) > 0 ? 1 : 0),
        direction: Axis.horizontal,
        availableRowsPerPage: [
          ...widget.availableRowsPerPage,
          (widget.total ?? 0 ~/ 1000) > 1 ? 1000 : widget.total ?? 0
        ],
        onRowsPerPageChanged: (int? rowsPerPage) {
          widget.onRowsPerPageChanged?.call(rowsPerPage);
          widget.pageController.firstPage();
        },
      ),
    );
  }
}
