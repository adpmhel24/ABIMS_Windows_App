import '../views/AdjustmentOut/presentations/adjustment_out.dart';
import '/src/views/Master%20Data/products/view.dart';
import 'package:auto_route/auto_route.dart';

import '../../main_wrapper_page.dart';
import '../views/GoodsIssue/presentations/goods_issue.dart';
import '../views/Login/login.dart';
import '../views/Master Data/boms/components/boms.dart';
import '../views/Master Data/boms/components/bom_form.dart';
import '../views/Master Data/boms/view.dart';
import 'router_guard.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: LoginPage, path: "login"),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.noTransition,
      durationInMilliseconds: 100,
      page: MainWrapperPage,
      path: "",
      initial: true,
      guards: [RouteGuard],
      children: [
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.noTransition,
          durationInMilliseconds: 100,
          page: GoodsIssuePage,
          path: "goods_issue",
          initial: true,
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.noTransition,
          durationInMilliseconds: 100,
          page: InvAdjOutPage,
          path: "inv_adj_out",
          initial: true,
        ),
        CustomRoute(
            transitionsBuilder: TransitionsBuilders.noTransition,
            durationInMilliseconds: 100,
            page: ProductsPage,
            path: "products"),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.noTransition,
          durationInMilliseconds: 100,
          page: BillOfMaterialWrapperPage,
          path: "bom",
          children: [
            CustomRoute(
                transitionsBuilder: TransitionsBuilders.noTransition,
                durationInMilliseconds: 100,
                page: BillOfMaterialsPage,
                initial: true),
            CustomRoute(
                transitionsBuilder: TransitionsBuilders.noTransition,
                durationInMilliseconds: 100,
                page: BillOfMaterialFormPage),
          ],
        ),
      ],
    )
  ],
)
class $AppRouter {}
