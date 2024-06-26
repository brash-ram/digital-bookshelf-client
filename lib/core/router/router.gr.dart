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
    EmptyRouterGenre.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterGenrePage(),
      );
    },
    EmptyRouterHome.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterHomePage(),
      );
    },
    EmptyRouterLibrary.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterLibraryPage(),
      );
    },
    EmptyRouterProfile.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterProfilePage(),
      );
    },
    GeneralRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GeneralScreen(),
      );
    },
    GenreBooksRoute.name: (routeData) {
      final args = routeData.argsAs<GenreBooksRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GenreBooksScreen(
          genre: args.genre,
          key: args.key,
        ),
      );
    },
    GenreListBooksRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GenreListBooksScreen(),
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
    LastBooksRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LastBooksScreen(),
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
    MyLibraryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyLibraryScreen(),
      );
    },
    MyPurchasedBooksRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyPurchasedBooksScreen(),
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
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileScreen(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    RecommendedBooksRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RecommendedBooksScreen(),
      );
    },
    SearchBookListRoute.name: (routeData) {
      final args = routeData.argsAs<SearchBookListRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SearchBookListScreen(
          name: args.name,
          key: args.key,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
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
/// [EmptyRouterGenrePage]
class EmptyRouterGenre extends PageRouteInfo<void> {
  const EmptyRouterGenre({List<PageRouteInfo>? children})
      : super(
          EmptyRouterGenre.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRouterGenre';

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
/// [EmptyRouterLibraryPage]
class EmptyRouterLibrary extends PageRouteInfo<void> {
  const EmptyRouterLibrary({List<PageRouteInfo>? children})
      : super(
          EmptyRouterLibrary.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRouterLibrary';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EmptyRouterProfilePage]
class EmptyRouterProfile extends PageRouteInfo<void> {
  const EmptyRouterProfile({List<PageRouteInfo>? children})
      : super(
          EmptyRouterProfile.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRouterProfile';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GeneralScreen]
class GeneralRoute extends PageRouteInfo<void> {
  const GeneralRoute({List<PageRouteInfo>? children})
      : super(
          GeneralRoute.name,
          initialChildren: children,
        );

  static const String name = 'GeneralRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GenreBooksScreen]
class GenreBooksRoute extends PageRouteInfo<GenreBooksRouteArgs> {
  GenreBooksRoute({
    required String genre,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          GenreBooksRoute.name,
          args: GenreBooksRouteArgs(
            genre: genre,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'GenreBooksRoute';

  static const PageInfo<GenreBooksRouteArgs> page =
      PageInfo<GenreBooksRouteArgs>(name);
}

class GenreBooksRouteArgs {
  const GenreBooksRouteArgs({
    required this.genre,
    this.key,
  });

  final String genre;

  final Key? key;

  @override
  String toString() {
    return 'GenreBooksRouteArgs{genre: $genre, key: $key}';
  }
}

/// generated route for
/// [GenreListBooksScreen]
class GenreListBooksRoute extends PageRouteInfo<void> {
  const GenreListBooksRoute({List<PageRouteInfo>? children})
      : super(
          GenreListBooksRoute.name,
          initialChildren: children,
        );

  static const String name = 'GenreListBooksRoute';

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
/// [LastBooksScreen]
class LastBooksRoute extends PageRouteInfo<void> {
  const LastBooksRoute({List<PageRouteInfo>? children})
      : super(
          LastBooksRoute.name,
          initialChildren: children,
        );

  static const String name = 'LastBooksRoute';

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
/// [MyLibraryScreen]
class MyLibraryRoute extends PageRouteInfo<void> {
  const MyLibraryRoute({List<PageRouteInfo>? children})
      : super(
          MyLibraryRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyLibraryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyPurchasedBooksScreen]
class MyPurchasedBooksRoute extends PageRouteInfo<void> {
  const MyPurchasedBooksRoute({List<PageRouteInfo>? children})
      : super(
          MyPurchasedBooksRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyPurchasedBooksRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    int? userId,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            userId: userId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<ProfileRouteArgs> page =
      PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    this.userId,
  });

  final Key? key;

  final int? userId;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [RecommendedBooksScreen]
class RecommendedBooksRoute extends PageRouteInfo<void> {
  const RecommendedBooksRoute({List<PageRouteInfo>? children})
      : super(
          RecommendedBooksRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecommendedBooksRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchBookListScreen]
class SearchBookListRoute extends PageRouteInfo<SearchBookListRouteArgs> {
  SearchBookListRoute({
    required String name,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SearchBookListRoute.name,
          args: SearchBookListRouteArgs(
            name: name,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchBookListRoute';

  static const PageInfo<SearchBookListRouteArgs> page =
      PageInfo<SearchBookListRouteArgs>(name);
}

class SearchBookListRouteArgs {
  const SearchBookListRouteArgs({
    required this.name,
    this.key,
  });

  final String name;

  final Key? key;

  @override
  String toString() {
    return 'SearchBookListRouteArgs{name: $name, key: $key}';
  }
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
