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
      final args = routeData.argsAs<AddBookRouteArgs>(
          orElse: () => const AddBookRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddBookScreen(
          key: args.key,
          book: args.book,
        ),
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
    BookListRoute.name: (routeData) {
      final args = routeData.argsAs<BookListRouteArgs>(
          orElse: () => const BookListRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BookListScreen(
          key: args.key,
          authorId: args.authorId,
        ),
      );
    },
    BookRoute.name: (routeData) {
      final args = routeData.argsAs<BookRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BookScreen(
          id: args.id,
          key: args.key,
        ),
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
class AddBookRoute extends PageRouteInfo<AddBookRouteArgs> {
  AddBookRoute({
    Key? key,
    NewBook? book,
    List<PageRouteInfo>? children,
  }) : super(
          AddBookRoute.name,
          args: AddBookRouteArgs(
            key: key,
            book: book,
          ),
          initialChildren: children,
        );

  static const String name = 'AddBookRoute';

  static const PageInfo<AddBookRouteArgs> page =
      PageInfo<AddBookRouteArgs>(name);
}

class AddBookRouteArgs {
  const AddBookRouteArgs({
    this.key,
    this.book,
  });

  final Key? key;

  final NewBook? book;

  @override
  String toString() {
    return 'AddBookRouteArgs{key: $key, book: $book}';
  }
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
/// [BookListScreen]
class BookListRoute extends PageRouteInfo<BookListRouteArgs> {
  BookListRoute({
    Key? key,
    int? authorId,
    List<PageRouteInfo>? children,
  }) : super(
          BookListRoute.name,
          args: BookListRouteArgs(
            key: key,
            authorId: authorId,
          ),
          initialChildren: children,
        );

  static const String name = 'BookListRoute';

  static const PageInfo<BookListRouteArgs> page =
      PageInfo<BookListRouteArgs>(name);
}

class BookListRouteArgs {
  const BookListRouteArgs({
    this.key,
    this.authorId,
  });

  final Key? key;

  final int? authorId;

  @override
  String toString() {
    return 'BookListRouteArgs{key: $key, authorId: $authorId}';
  }
}

/// generated route for
/// [BookScreen]
class BookRoute extends PageRouteInfo<BookRouteArgs> {
  BookRoute({
    required int id,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          BookRoute.name,
          args: BookRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'BookRoute';

  static const PageInfo<BookRouteArgs> page = PageInfo<BookRouteArgs>(name);
}

class BookRouteArgs {
  const BookRouteArgs({
    required this.id,
    this.key,
  });

  final int id;

  final Key? key;

  @override
  String toString() {
    return 'BookRouteArgs{id: $id, key: $key}';
  }
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
