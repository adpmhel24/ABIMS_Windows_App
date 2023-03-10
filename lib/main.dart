import '/src/data/repositories/app_repos.dart';
import '/src/theme.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:system_theme/system_theme.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as flutter_acrylic;
import 'src/data/repositories/repo_local_storage.dart';
import 'src/global_bloc/bloc_auth/bloc.dart';
import 'src/router/router.gr.dart';
import 'src/router/router_guard.dart';

/// Checks if the current environment is a desktop environment.
bool get isDesktop {
  if (kIsWeb) return false;
  return [
    TargetPlatform.windows,
    TargetPlatform.linux,
    TargetPlatform.macOS,
  ].contains(defaultTargetPlatform);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Provider.debugCheckInvalidValueType = null;
  await LocalStorageRepo().init();

  // if it's on the web, windows or android, load the accent color
  if (kIsWeb ||
      [TargetPlatform.windows, TargetPlatform.android]
          .contains(defaultTargetPlatform)) {
    SystemTheme.accentColor.load();
  }

  setPathUrlStrategy();
  if (isDesktop) {
    await flutter_acrylic.Window.initialize();
    await WindowManager.instance.ensureInitialized();
    windowManager.waitUntilReadyToShow().then((_) async {
      await windowManager.setTitleBarStyle(
        TitleBarStyle.normal,
      );

      // await windowManager.setSize(const Size(755, 545));
      await windowManager.setSize(await windowManager.getSize());
      await windowManager.setMinimumSize(const Size(755, 545));
      await windowManager.center();
      await windowManager.show();
      await windowManager.setPreventClose(true);
      await windowManager.setSkipTaskbar(false);
    });
  }

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter(routeGuard: RouteGuard());

  final double maxWidth = 2460;
  final double minWidth = 450;
  final bool defaultScale = true;
  final breakpoints = const [
    ResponsiveBreakpoint.resize(450, name: MOBILE),
    ResponsiveBreakpoint.autoScale(800, name: TABLET),
    ResponsiveBreakpoint.autoScale(1000, name: TABLET),
    ResponsiveBreakpoint.resize(1200, name: DESKTOP),
    ResponsiveBreakpoint.autoScale(2460, name: "4K"),
  ];
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: AppRepoProvider.repoProviders,
      child: BlocProvider(
        create: (context) => AuthBloc(),
        child: ChangeNotifierProvider(
          create: (_) => AppTheme(),
          builder: (context, _) {
            final appTheme = context.watch<AppTheme>();

            return GlobalLoaderOverlay(
              useDefaultLoading: false,
              overlayWidget: const Center(
                child: SpinKitWave(
                  color: Colors.white,
                ),
              ),
              child: FluentApp.router(
                title: 'ABIMS',
                themeMode: appTheme.mode,
                debugShowCheckedModeBanner: false,
                color: appTheme.color,
                darkTheme: FluentThemeData(
                  brightness: Brightness.dark,
                  accentColor: appTheme.color,
                  visualDensity: VisualDensity.standard,
                  focusTheme: FocusThemeData(
                    glowFactor: is10footScreen() ? 2.0 : 0.0,
                  ),
                ),
                theme: FluentThemeData(
                  brightness: Brightness.light,
                  accentColor: appTheme.color,
                  visualDensity: VisualDensity.standard,
                  focusTheme: FocusThemeData(
                    glowFactor: is10footScreen() ? 2.0 : 0.0,
                  ),
                ),
                routeInformationParser: _appRouter.defaultRouteParser(),
                routerDelegate: _appRouter.delegate(),
                builder: (context, child) {
                  return ResponsiveWrapper.builder(
                    BouncingScrollWrapper.builder(context, child!),
                    maxWidth: maxWidth,
                    minWidth: minWidth,
                    defaultScale: defaultScale,
                    breakpoints: breakpoints,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
