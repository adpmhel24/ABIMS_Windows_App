import 'package:auto_route/auto_route.dart';
import 'package:fluent_ui/fluent_ui.dart';

class BillOfMaterialWrapperPage extends StatelessWidget {
  const BillOfMaterialWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AutoRouter(
      key: GlobalObjectKey("bill_of_material"),
    );
  }
}
