import 'package:app_write_clone/src/modules/signin/views/login_page.dart';
import 'package:app_write_clone/src/modules/signup/views/signup_page.dart';
import 'package:auto_route/auto_route.dart';

import '../modules/dashbord/overview/views/overview_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          path: "/login",
        ),
        AutoRoute(
          page: OverviewRoute.page,
          path: "/dashboard/overview",
        ),
        AutoRoute(
          page: SignUpRoute.page,
          path: "/register",
          initial: true,
        )
      ];
}
