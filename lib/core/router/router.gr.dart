// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    EmptyRouterUser.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EmptyRouterUserPage(),
      );
    },
    EmptyRouterCart.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EmptyRouterCartPage(),
      );
    },
    EmptyRouterCatalog.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EmptyRouterCatalogPage(),
      );
    },
    EmptyRouterCategory.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EmptyRouterCategoryPage(),
      );
    },
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthScreen(),
      );
    },
  };
}

/// generated route for
/// [EmptyRouterUserPage]
class EmptyRouterUser extends PageRouteInfo<void> {
  const EmptyRouterUser({List<PageRouteInfo>? children})
      : super(
          EmptyRouterUser.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRouterUser';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EmptyRouterCartPage]
class EmptyRouterCart extends PageRouteInfo<void> {
  const EmptyRouterCart({List<PageRouteInfo>? children})
      : super(
          EmptyRouterCart.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRouterCart';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EmptyRouterCatalogPage]
class EmptyRouterCatalog extends PageRouteInfo<void> {
  const EmptyRouterCatalog({List<PageRouteInfo>? children})
      : super(
          EmptyRouterCatalog.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRouterCatalog';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EmptyRouterCategoryPage]
class EmptyRouterCategory extends PageRouteInfo<void> {
  const EmptyRouterCategory({List<PageRouteInfo>? children})
      : super(
          EmptyRouterCategory.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRouterCategory';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthScreen]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
