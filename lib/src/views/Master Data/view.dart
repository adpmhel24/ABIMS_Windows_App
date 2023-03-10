import 'package:fluent_ui/fluent_ui.dart';

class MasterDataPage extends StatefulWidget {
  const MasterDataPage({super.key});

  @override
  State<MasterDataPage> createState() => _MasterDataPageState();
}

class _MasterDataPageState extends State<MasterDataPage> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      content: Text("Master Data"),
    );
  }
}
