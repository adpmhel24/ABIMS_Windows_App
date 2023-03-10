import 'package:auto_route/auto_route.dart';
import 'package:fluent_ui/fluent_ui.dart';

import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

import 'src/global_bloc/bloc_auth/bloc.dart';
import 'src/router/router.gr.dart';
import 'src/theme.dart';

class MainWrapperPage extends StatefulWidget {
  const MainWrapperPage({Key? key}) : super(key: key);

  @override
  State<MainWrapperPage> createState() => _MainWrapperPageState();
}

class _MainWrapperPageState extends State<MainWrapperPage> with WindowListener {
  bool value = false;

  int index = 0;
  final viewKey = GlobalKey();

  @override
  void initState() {
    windowManager.addListener(this);
    super.initState();
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    super.dispose();
  }

  final routes = [
    const GoodsIssueRoute(),
    // const BillOfMaterialWrapperRoute(children: [
    //   BillOfMaterialsRoute(),
    // ]),
    // const ProductsRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppTheme>();
    return NavigationView(
      key: viewKey,
      pane: NavigationPane(
        selected: index,
        size: const NavigationPaneSize(
          openMinWidth: 250,
          openMaxWidth: 250,
        ),
        header: _paneHeader(),
        displayMode: PaneDisplayMode.compact,
        indicator: () {
          switch (appTheme.indicator) {
            case NavigationIndicators.end:
              return const EndNavigationIndicator();
            case NavigationIndicators.sticky:
            default:
              return const StickyNavigationIndicator();
          }
        }(),
        onChanged: (v) {
          setState(() {
            index = v;
          });

          context.router.push(
            routes[v],
          );
        },
        items: [
          PaneItem(
            icon: const Icon(FluentIcons.issue_tracking),
            title: const Text("Goods Issue"),
            body: const SizedBox.shrink(),
          ),
          // PaneItem(
          //   icon: const Icon(FluentIcons.master_database),
          //   title: const Text("Bill Of Materials"),
          //   body: const SizedBox.shrink(),
          // ),
          // PaneItem(
          //   icon: const Icon(FluentIcons.product),
          //   title: const Text("Products"),
          //   body: const SizedBox.shrink(),
          // ),
        ],
        footerItems: [
          PaneItemSeparator(),
          PaneItemAction(
            icon: const Icon(FluentIcons.sign_out),
            title: const Text('Sign Out'),
            onTap: () {
              context.read<AuthBloc>().add(LogoutSubmitted());
            },
          )
        ],
      ),
      paneBodyBuilder: (viewWidget) => const AutoRouter(
        key: GlobalObjectKey("home_page"),
      ),
    );
  }

  Container _paneHeader() {
    return Container(
      height: kOneLineTileHeight,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: const Text("Atlantic Bakery"),
    );
  }

  @override
  void onWindowClose() async {
    bool isPreventClose = await windowManager.isPreventClose();
    if (isPreventClose && mounted) {
      showDialog(
        context: context,
        builder: (_) {
          return ContentDialog(
            title: const Text('Confirm close'),
            content: const Text('Are you sure you want to close this window?'),
            actions: [
              FilledButton(
                child: const Text('Yes'),
                onPressed: () {
                  Navigator.pop(context);
                  context.read<AuthBloc>().add(LogoutSubmitted());
                  windowManager.destroy();
                },
              ),
              Button(
                child: const Text('No'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
    }
  }
}
