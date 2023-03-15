import 'package:fluent_ui/fluent_ui.dart';

import 'components/adj_out_content.dart';

class InvAdjOutPage extends StatefulWidget {
  const InvAdjOutPage({super.key});

  @override
  State<InvAdjOutPage> createState() => _InvAdjOutPageState();
}

class _InvAdjOutPageState extends State<InvAdjOutPage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.withPadding(
      header: const PageHeader(title: Text("Inv Adjustment Out For SAP")),
      content: const AdjustmentOutContent(),
    );
  }
}
