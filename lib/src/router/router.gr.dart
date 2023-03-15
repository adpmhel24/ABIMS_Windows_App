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
import 'package:abc_windows_app/main_wrapper_page.dart' as _i2;
import 'package:abc_windows_app/src/data/models/models.dart' as _i13;
import 'package:abc_windows_app/src/router/router_guard.dart' as _i11;
import 'package:abc_windows_app/src/views/AdjustmentOut/presentations/adjustment_out.dart'
    as _i4;
import 'package:abc_windows_app/src/views/GoodsIssue/presentations/goods_issue.dart'
    as _i3;
import 'package:abc_windows_app/src/views/Login/login.dart' as _i1;
import 'package:abc_windows_app/src/views/Master%20Data/boms/components/bom_form.dart'
    as _i8;
import 'package:abc_windows_app/src/views/Master%20Data/boms/components/boms.dart'
    as _i7;
import 'package:abc_windows_app/src/views/Master%20Data/boms/view.dart' as _i6;
import 'package:abc_windows_app/src/views/Master%20Data/products/view.dart'
    as _i5;
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:fluent_ui/fluent_ui.dart' as _i12;
import 'package:flutter/material.dart' as _i10;

class AppRouter extends _i9.RootStackRouter {
  AppRouter({
    _i10.GlobalKey<_i10.NavigatorState>? navigatorKey,
    required this.routeGuard,
  }) : super(navigatorKey);

  final _i11.RouteGuard routeGuard;

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    MainWrapperRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.MainWrapperPage(),
        transitionsBuilder: _i9.TransitionsBuilders.noTransition,
        durationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    GoodsIssueRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.GoodsIssuePage(),
        transitionsBuilder: _i9.TransitionsBuilders.noTransition,
        durationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    InvAdjOutRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.InvAdjOutPage(),
        transitionsBuilder: _i9.TransitionsBuilders.noTransition,
        durationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProductsRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.ProductsPage(),
        transitionsBuilder: _i9.TransitionsBuilders.noTransition,
        durationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BillOfMaterialWrapperRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.BillOfMaterialWrapperPage(),
        transitionsBuilder: _i9.TransitionsBuilders.noTransition,
        durationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BillOfMaterialsRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.BillOfMaterialsPage(),
        transitionsBuilder: _i9.TransitionsBuilders.noTransition,
        durationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BillOfMaterialFormRoute.name: (routeData) {
      final args = routeData.argsAs<BillOfMaterialFormRouteArgs>();
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: _i8.BillOfMaterialFormPage(
          key: args.key,
          selectedBoMObj: args.selectedBoMObj,
          onRefresh: args.onRefresh,
        ),
        transitionsBuilder: _i9.TransitionsBuilders.noTransition,
        durationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '',
          fullMatch: true,
        ),
        _i9.RouteConfig(
          LoginRoute.name,
          path: 'login',
        ),
        _i9.RouteConfig(
          MainWrapperRoute.name,
          path: '',
          guards: [routeGuard],
          children: [
            _i9.RouteConfig(
              '#redirect',
              path: '',
              parent: MainWrapperRoute.name,
              redirectTo: 'goods_issue',
              fullMatch: true,
            ),
            _i9.RouteConfig(
              GoodsIssueRoute.name,
              path: 'goods_issue',
              parent: MainWrapperRoute.name,
            ),
            _i9.RouteConfig(
              InvAdjOutRoute.name,
              path: 'inv_adj_out',
              parent: MainWrapperRoute.name,
            ),
            _i9.RouteConfig(
              ProductsRoute.name,
              path: 'products',
              parent: MainWrapperRoute.name,
            ),
            _i9.RouteConfig(
              BillOfMaterialWrapperRoute.name,
              path: 'bom',
              parent: MainWrapperRoute.name,
              children: [
                _i9.RouteConfig(
                  BillOfMaterialsRoute.name,
                  path: '',
                  parent: BillOfMaterialWrapperRoute.name,
                ),
                _i9.RouteConfig(
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
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: 'login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.MainWrapperPage]
class MainWrapperRoute extends _i9.PageRouteInfo<void> {
  const MainWrapperRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainWrapperRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'MainWrapperRoute';
}

/// generated route for
/// [_i3.GoodsIssuePage]
class GoodsIssueRoute extends _i9.PageRouteInfo<void> {
  const GoodsIssueRoute()
      : super(
          GoodsIssueRoute.name,
          path: 'goods_issue',
        );

  static const String name = 'GoodsIssueRoute';
}

/// generated route for
/// [_i4.InvAdjOutPage]
class InvAdjOutRoute extends _i9.PageRouteInfo<void> {
  const InvAdjOutRoute()
      : super(
          InvAdjOutRoute.name,
          path: 'inv_adj_out',
        );

  static const String name = 'InvAdjOutRoute';
}

/// generated route for
/// [_i5.ProductsPage]
class ProductsRoute extends _i9.PageRouteInfo<void> {
  const ProductsRoute()
      : super(
          ProductsRoute.name,
          path: 'products',
        );

  static const String name = 'ProductsRoute';
}

/// generated route for
/// [_i6.BillOfMaterialWrapperPage]
class BillOfMaterialWrapperRoute extends _i9.PageRouteInfo<void> {
  const BillOfMaterialWrapperRoute({List<_i9.PageRouteInfo>? children})
      : super(
          BillOfMaterialWrapperRoute.name,
          path: 'bom',
          initialChildren: children,
        );

  static const String name = 'BillOfMaterialWrapperRoute';
}

/// generated route for
/// [_i7.BillOfMaterialsPage]
class BillOfMaterialsRoute extends _i9.PageRouteInfo<void> {
  const BillOfMaterialsRoute()
      : super(
          BillOfMaterialsRoute.name,
          path: '',
        );

  static const String name = 'BillOfMaterialsRoute';
}

/// generated route for
/// [_i8.BillOfMaterialFormPage]
class BillOfMaterialFormRoute
    extends _i9.PageRouteInfo<BillOfMaterialFormRouteArgs> {
  BillOfMaterialFormRoute({
    _i12.Key? key,
    _i13.BoMModel? selectedBoMObj,
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

  final _i12.Key? key;

  final _i13.BoMModel? selectedBoMObj;

  final void Function() onRefresh;

  @override
  String toString() {
    return 'BillOfMaterialFormRouteArgs{key: $key, selectedBoMObj: $selectedBoMObj, onRefresh: $onRefresh}';
  }
}
