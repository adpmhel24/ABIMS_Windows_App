// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import '/main_wrapper_page.dart' as _i2;
import '/src/data/models/models.dart' as _i12;
import '/src/router/router_guard.dart' as _i10;
import '/src/views/GoodsIssue/presentations/goods_issue.dart' as _i3;
import '/src/views/Login/login.dart' as _i1;
import '/src/views/Master%20Data/boms/components/bom_form.dart' as _i7;
import '/src/views/Master%20Data/boms/components/boms.dart' as _i6;
import '/src/views/Master%20Data/boms/view.dart' as _i5;
import '/src/views/Master%20Data/products/view.dart' as _i4;
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:fluent_ui/fluent_ui.dart' as _i11;
import 'package:flutter/material.dart' as _i9;

class AppRouter extends _i8.RootStackRouter {
  AppRouter({
    _i9.GlobalKey<_i9.NavigatorState>? navigatorKey,
    required this.routeGuard,
  }) : super(navigatorKey);

  final _i10.RouteGuard routeGuard;

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    MainWrapperRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.MainWrapperPage(),
        transitionsBuilder: _i8.TransitionsBuilders.noTransition,
        durationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    GoodsIssueRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.GoodsIssuePage(),
        transitionsBuilder: _i8.TransitionsBuilders.noTransition,
        durationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProductsRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.ProductsPage(),
        transitionsBuilder: _i8.TransitionsBuilders.noTransition,
        durationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BillOfMaterialWrapperRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.BillOfMaterialWrapperPage(),
        transitionsBuilder: _i8.TransitionsBuilders.noTransition,
        durationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BillOfMaterialsRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.BillOfMaterialsPage(),
        transitionsBuilder: _i8.TransitionsBuilders.noTransition,
        durationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BillOfMaterialFormRoute.name: (routeData) {
      final args = routeData.argsAs<BillOfMaterialFormRouteArgs>();
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i7.BillOfMaterialFormPage(
          key: args.key,
          selectedBoMObj: args.selectedBoMObj,
          onRefresh: args.onRefresh,
        ),
        transitionsBuilder: _i8.TransitionsBuilders.noTransition,
        durationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '',
          fullMatch: true,
        ),
        _i8.RouteConfig(
          LoginRoute.name,
          path: 'login',
        ),
        _i8.RouteConfig(
          MainWrapperRoute.name,
          path: '',
          guards: [routeGuard],
          children: [
            _i8.RouteConfig(
              '#redirect',
              path: '',
              parent: MainWrapperRoute.name,
              redirectTo: 'goods_issue',
              fullMatch: true,
            ),
            _i8.RouteConfig(
              GoodsIssueRoute.name,
              path: 'goods_issue',
              parent: MainWrapperRoute.name,
            ),
            _i8.RouteConfig(
              ProductsRoute.name,
              path: 'products',
              parent: MainWrapperRoute.name,
            ),
            _i8.RouteConfig(
              BillOfMaterialWrapperRoute.name,
              path: 'bom',
              parent: MainWrapperRoute.name,
              children: [
                _i8.RouteConfig(
                  BillOfMaterialsRoute.name,
                  path: '',
                  parent: BillOfMaterialWrapperRoute.name,
                ),
                _i8.RouteConfig(
                  BillOfMaterialFormRoute.name,
                  path: 'bill-of-material-form-page',
                  parent: BillOfMaterialWrapperRoute.name,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: 'login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.MainWrapperPage]
class MainWrapperRoute extends _i8.PageRouteInfo<void> {
  const MainWrapperRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainWrapperRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'MainWrapperRoute';
}

/// generated route for
/// [_i3.GoodsIssuePage]
class GoodsIssueRoute extends _i8.PageRouteInfo<void> {
  const GoodsIssueRoute()
      : super(
          GoodsIssueRoute.name,
          path: 'goods_issue',
        );

  static const String name = 'GoodsIssueRoute';
}

/// generated route for
/// [_i4.ProductsPage]
class ProductsRoute extends _i8.PageRouteInfo<void> {
  const ProductsRoute()
      : super(
          ProductsRoute.name,
          path: 'products',
        );

  static const String name = 'ProductsRoute';
}

/// generated route for
/// [_i5.BillOfMaterialWrapperPage]
class BillOfMaterialWrapperRoute extends _i8.PageRouteInfo<void> {
  const BillOfMaterialWrapperRoute({List<_i8.PageRouteInfo>? children})
      : super(
          BillOfMaterialWrapperRoute.name,
          path: 'bom',
          initialChildren: children,
        );

  static const String name = 'BillOfMaterialWrapperRoute';
}

/// generated route for
/// [_i6.BillOfMaterialsPage]
class BillOfMaterialsRoute extends _i8.PageRouteInfo<void> {
  const BillOfMaterialsRoute()
      : super(
          BillOfMaterialsRoute.name,
          path: '',
        );

  static const String name = 'BillOfMaterialsRoute';
}

/// generated route for
/// [_i7.BillOfMaterialFormPage]
class BillOfMaterialFormRoute
    extends _i8.PageRouteInfo<BillOfMaterialFormRouteArgs> {
  BillOfMaterialFormRoute({
    _i11.Key? key,
    _i12.BoMModel? selectedBoMObj,
    required void Function() onRefresh,
  }) : super(
          BillOfMaterialFormRoute.name,
          path: 'bill-of-material-form-page',
          args: BillOfMaterialFormRouteArgs(
            key: key,
            selectedBoMObj: selectedBoMObj,
            onRefresh: onRefresh,
          ),
        );

  static const String name = 'BillOfMaterialFormRoute';
}

class BillOfMaterialFormRouteArgs {
  const BillOfMaterialFormRouteArgs({
    this.key,
    this.selectedBoMObj,
    required this.onRefresh,
  });

  final _i11.Key? key;

  final _i12.BoMModel? selectedBoMObj;

  final void Function() onRefresh;

  @override
  String toString() {
    return 'BillOfMaterialFormRouteArgs{key: $key, selectedBoMObj: $selectedBoMObj, onRefresh: $onRefresh}';
  }
}
