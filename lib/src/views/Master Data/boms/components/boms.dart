import '/src/router/router.gr.dart';
import '/src/utils/fetching_status.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../../data/repositories/repo_bom.dart';
import '../../../../shared/widgets/custom_dialog.dart';
import '../../../../utils/constant.dart';
import '../blocs/fetch_bloc/bloc.dart';
import 'bom_table.dart';

class BillOfMaterialsPage extends StatefulWidget {
  const BillOfMaterialsPage({Key? key}) : super(key: key);

  @override
  State<BillOfMaterialsPage> createState() => _BillOfMaterialsPageState();
}

class _BillOfMaterialsPageState extends State<BillOfMaterialsPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchBoMsBloc(
        context.read<BomRepo>(),
      )..add(LoadBoMs()),
      child: Builder(builder: (context) {
        return ScaffoldPage.scrollable(
          padding: const EdgeInsets.all(Constant.minPadding),
          header: pageHeader(context),
          children: [
            commandBar(context),
            Constant.heightSpacer,
            BlocConsumer<FetchBoMsBloc, FetchBoMsState>(
              listenWhen: (previous, current) =>
                  previous.status != current.status,
              listener: (_, state) {
                if (state.status == FetchingStatus.loading) {
                  context.loaderOverlay.show();
                } else if (state.status == FetchingStatus.error) {
                  context.loaderOverlay.hide();
                  CustomDialogBox.errorMessage(context, message: state.message);
                } else if (state.status == FetchingStatus.success) {
                  context.loaderOverlay.hide();
                }
              },
              builder: (context, state) {
                return SizedBox(
                  height: 500,
                  child: BoMsTable(
                    bomsObj: state.datas,
                  ),
                );
              },
            )
          ],
        );
      }),
    );
  }

  PageHeader pageHeader(BuildContext context) {
    return PageHeader(
      title: const Text("Bill Of Materials"),
      commandBar: SizedBox(
        width: 200,
        child: TextBox(
          controller: searchController,
          placeholder: "Search",
          onSubmitted: (v) {
            context.read<FetchBoMsBloc>().add(SearchByKeyword(v));
          },
        ),
      ),
    );
  }

  CommandBarCard commandBar(BuildContext context) {
    return CommandBarCard(
      child: CommandBar(
        overflowBehavior: CommandBarOverflowBehavior.clip,
        primaryItems: [
          CommandBarBuilderItem(
            builder: (context, mode, w) => w,
            wrappedItem: CommandBarButton(
              icon: const Icon(FluentIcons.add),
              label: const Text("New"),
              onPressed: () {
                context.router.navigate(
                  BillOfMaterialWrapperRoute(
                    children: [
                      BillOfMaterialFormRoute(
                        onRefresh: () =>
                            context.read<FetchBoMsBloc>().add(LoadBoMs()),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          CommandBarBuilderItem(
            builder: (context, mode, w) => w,
            wrappedItem: CommandBarButton(
              icon: const Icon(FluentIcons.refresh),
              label: const Text("Refresh"),
              onPressed: () {
                setState(() {
                  searchController.clear();
                });
                context.read<FetchBoMsBloc>().add(LoadBoMs());
              },
            ),
          ),
        ],
      ),
    );
  }
}
