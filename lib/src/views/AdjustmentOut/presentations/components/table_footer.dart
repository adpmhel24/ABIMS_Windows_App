import 'package:fluent_ui/fluent_ui.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import 'datasource.dart';

class InvAdjOutTableFooter extends StatefulWidget {
  const InvAdjOutTableFooter({
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
  final InvAdjOutDataSource dataSource;
  final double dataPagerHeight;
  final int rowsPerPage;
  final List<int> availableRowsPerPage;
  final DataPagerController pageController;

  @override
  State<InvAdjOutTableFooter> createState() => _InvAdjOutTableFooterState();
}

class _InvAdjOutTableFooterState extends State<InvAdjOutTableFooter> {
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
        availableRowsPerPage: widget.availableRowsPerPage,
        onRowsPerPageChanged: (int? rowsPerPage) {
          widget.pageController.selectedPageIndex = 0;
          widget.onRowsPerPageChanged?.call(rowsPerPage);
        },
      ),
    );
  }
}
