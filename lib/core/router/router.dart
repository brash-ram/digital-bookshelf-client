import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/core/router/empty_router_page.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/add_book/add_book_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/add_book_series/add_book_series_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/auth/auth_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/book/book_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/book_list/book_list_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/general/general_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/genre_books/genre_books_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/genre_list/genre_list_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/genre_list_books/genre_list_books_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/home/home_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/last_books/last_books_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/list_book_series/list_book_series_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/my_library/my_library_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/my_purchased_books/my_purchased_books_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/personal_data/personal_data_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/personal_data_refs/personal_data_refs_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/profile/profile_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/profile_menu_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/recommended_books/recommended_books_screen.dart';
import 'package:digital_bookshelf_client/ui/screen/search_book_list/search_book_list.dart';
import 'package:digital_bookshelf_client/ui/screen/settings/settings_screen.dart';
import 'package:flutter/material.dart';

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
        AutoRoute(page: EmptyRouterHome.page, path: 'general', children: [
          AutoRoute(page: GeneralRoute.page, path: '', initial: true),
          AutoRoute(page: BookRoute.page, path: 'book'),
          AutoRoute(page: ProfileRoute.page, path: 'profile'),
          AutoRoute(page: SearchBookListRoute.page, path: 'search'),
          AutoRoute(page: LastBooksRoute.page, path: 'last'),
          AutoRoute(page: RecommendedBooksRoute.page, path: 'rec'),
        ],
        ),
        AutoRoute(page: EmptyRouterProfile.page, path: 'profile', children: [
          AutoRoute(page: ProfileMenuRoute.page, path: '', initial: true),
          AutoRoute(page: PersonalDataRoute.page, path: 'personal'),
          AutoRoute(page: PersonalDataRefsRoute.page, path: 'personal_refs'),
          AutoRoute(page: GenreListRoute.page, path: 'genres'),
          AutoRoute(page: AddBookSeriesRoute.page, path: 'addBookSeries'),
          AutoRoute(page: ListBookSeriesRoute.page, path: 'bookSeries'),
          AutoRoute(page: AddBookRoute.page, path: 'addBook'),
          AutoRoute(page: BookListRoute.page, path: 'books'),
          AutoRoute(page: BookRoute.page, path: 'book'),
          AutoRoute(page: ProfileRoute.page, path: 'profile'),
          AutoRoute(page: MyLibraryRoute.page, path: 'library'),
          AutoRoute(page: MyPurchasedBooksRoute.page, path: 'purchased'),
          AutoRoute(page: GenreBooksRoute.page, path: 'genreBooks'),
          AutoRoute(page: SettingsRoute.page, path: 'settings'),
        ],
        ),
        AutoRoute(page: EmptyRouterGenre.page, path: 'genre', children: [
          AutoRoute(page: GenreListBooksRoute.page, path: '', initial: true),
          AutoRoute(page: BookRoute.page, path: 'book'),
          AutoRoute(page: ProfileRoute.page, path: 'profile'),
          AutoRoute(page: GenreBooksRoute.page, path: 'genreBooks'),
        ],
        ),
        AutoRoute(page: EmptyRouterLibrary.page, path: 'myLibrary', children: [
          AutoRoute(page: MyLibraryRoute.page, path: '', initial: true),
          AutoRoute(page: BookRoute.page, path: 'book'),
          AutoRoute(page: ProfileRoute.page, path: 'profile'),
        ],
        ),
      ],
    ),
  ];
}
