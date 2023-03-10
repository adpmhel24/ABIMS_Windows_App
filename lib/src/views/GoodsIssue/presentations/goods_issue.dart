import 'package:fluent_ui/fluent_ui.dart';

import 'components/for_sap.dart';

class GoodsIssuePage extends StatefulWidget {
  const GoodsIssuePage({super.key});

  @override
  State<GoodsIssuePage> createState() => _GoodsIssuePageState();
}

class _GoodsIssuePageState extends State<GoodsIssuePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.withPadding(
      header: const PageHeader(title: Text("Goods Issue")),
      content: TabView(
        currentIndex: _currentIndex,
        closeButtonVisibility: CloseButtonVisibilityMode.never,
        onChanged: (v) {
          setState(() {
            _currentIndex = v;
          });
        },
        tabs: [
          Tab(
            text: const Text("For Sap"),
            body: _currentIndex == 0
                ? const ForSapTab()
                : const SizedBox.expand(),
          ),
          Tab(
            text: const Text("Done"),
            body: const SizedBox.expand(),
          ),
        ],
      ),
    );
  }
}
