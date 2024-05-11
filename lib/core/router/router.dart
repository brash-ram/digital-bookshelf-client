import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/core/router/empty_router_page.dart';
import 'package:digital_bookshelf_client/ui/screen/auth/auth_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/home/home_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/profile_menu_screen.dart';

import '../../ui/screen/personal_data/personal_data_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AuthRoute.page, path: '/auth'),

    AutoRoute(
      page: HomeRoute.page,
      path: '/home',
      initial: true,
      children: [
        AutoRoute(page: EmptyRouterHome.page, path: 'menu', children: [
          AutoRoute(page: ProfileMenuRoute.page, path: ''),
          AutoRoute(page: PersonalDataRoute.page, path: 'personal'),
        ]),
      ]
    ),
  ];
}
