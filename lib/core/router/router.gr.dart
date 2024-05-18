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
    AddBookRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddBookScreen(),
      );
    },
    AddBookSeriesRoute.name: (routeData) {
      final args = routeData.argsAs<AddBookSeriesRouteArgs>(
          orElse: () => const AddBookSeriesRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddBookSeriesScreen(
          key: args.key,
          series: args.series,
        ),
      );
    },
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthScreen(),
      );
    },
    EmptyRouterHome.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterHomePage(),
      );
    },
    GenreListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GenreListScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    ListBookSeriesRoute.name: (routeData) {
      final args = routeData.argsAs<ListBookSeriesRouteArgs>(
          orElse: () => const ListBookSeriesRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ListBookSeriesScreen(
          key: args.key,
          authorId: args.authorId,
        ),
      );
    },
    PersonalDataRefsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PersonalDataRefsScreen(),
      );
    },
    PersonalDataRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PersonalDataScreen(),
      );
    },
    ProfileMenuRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileMenuScreen(),
      );
    },
  };
}

/// generated route for
/// [AddBookScreen]
class AddBookRoute extends PageRouteInfo<void> {
  const AddBookRoute({List<PageRouteInfo>? children})
      : super(
          AddBookRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddBookRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AddBookSeriesScreen]
class AddBookSeriesRoute extends PageRouteInfo<AddBookSeriesRouteArgs> {
  AddBookSeriesRoute({
    Key? key,
    SimpleBookSeries? series,
    List<PageRouteInfo>? children,
  }) : super(
          AddBookSeriesRoute.name,
          args: AddBookSeriesRouteArgs(
            key: key,
            series: series,
          ),
          initialChildren: children,
        );

  static const String name = 'AddBookSeriesRoute';

  static const PageInfo<AddBookSeriesRouteArgs> page =
      PageInfo<AddBookSeriesRouteArgs>(name);
}

class AddBookSeriesRouteArgs {
  const AddBookSeriesRouteArgs({
    this.key,
    this.series,
  });

  final Key? key;

  final SimpleBookSeries? series;

  @override
  String toString() {
    return 'AddBookSeriesRouteArgs{key: $key, series: $series}';
  }
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

/// generated route for
/// [EmptyRouterHomePage]
class EmptyRouterHome extends PageRouteInfo<void> {
  const EmptyRouterHome({List<PageRouteInfo>? children})
      : super(
          EmptyRouterHome.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRouterHome';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GenreListScreen]
class GenreListRoute extends PageRouteInfo<void> {
  const GenreListRoute({List<PageRouteInfo>? children})
      : super(
          GenreListRoute.name,
          initialChildren: children,
        );

  static const String name = 'GenreListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ListBookSeriesScreen]
class ListBookSeriesRoute extends PageRouteInfo<ListBookSeriesRouteArgs> {
  ListBookSeriesRoute({
    Key? key,
    int? authorId,
    List<PageRouteInfo>? children,
  }) : super(
          ListBookSeriesRoute.name,
          args: ListBookSeriesRouteArgs(
            key: key,
            authorId: authorId,
          ),
          initialChildren: children,
        );

  static const String name = 'ListBookSeriesRoute';

  static const PageInfo<ListBookSeriesRouteArgs> page =
      PageInfo<ListBookSeriesRouteArgs>(name);
}

class ListBookSeriesRouteArgs {
  const ListBookSeriesRouteArgs({
    this.key,
    this.authorId,
  });

  final Key? key;

  final int? authorId;

  @override
  String toString() {
    return 'ListBookSeriesRouteArgs{key: $key, authorId: $authorId}';
  }
}

/// generated route for
/// [PersonalDataRefsScreen]
class PersonalDataRefsRoute extends PageRouteInfo<void> {
  const PersonalDataRefsRoute({List<PageRouteInfo>? children})
      : super(
          PersonalDataRefsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalDataRefsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PersonalDataScreen]
class PersonalDataRoute extends PageRouteInfo<void> {
  const PersonalDataRoute({List<PageRouteInfo>? children})
      : super(
          PersonalDataRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalDataRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileMenuScreen]
class ProfileMenuRoute extends PageRouteInfo<void> {
  const ProfileMenuRoute({List<PageRouteInfo>? children})
      : super(
          ProfileMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileMenuRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
