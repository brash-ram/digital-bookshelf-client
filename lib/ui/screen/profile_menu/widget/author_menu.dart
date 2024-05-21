import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/widget/profile_menu_list_item.dart';
import 'package:flutter/material.dart';

class AuthorMenu extends StatelessWidget {
  const AuthorMenu({super.key});

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Padding(
        padding: const EdgeInsets.only(
          top: defaultValue,
          bottom: smallValue,
          left: defaultValue,
        ),
        child: Text(
          Translations.of(context).profile.menu.author.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      ProfileMenuListItem(
        onPressed: () async => AutoRouter.of(context).navigate(BookListRoute()),
        icon: const Icon(Icons.library_books),
        text: Translations.of(context).profile.menu.author.books,
      ),
      ProfileMenuListItem(
        onPressed: () async => AutoRouter.of(context).navigate(ListBookSeriesRoute()),
        icon: const Icon(Icons.menu_book),
        text: Translations.of(context).profile.menu.author.bookSeries,
      ),
      ProfileMenuListItem(
        onPressed: () async => AutoRouter.of(context).navigate(AddBookRoute()),
        icon: const Icon(Icons.add),
        text: Translations.of(context).profile.menu.author.addBook,
      ),
      ProfileMenuListItem(
        onPressed: () async => AutoRouter.of(context).navigate(AddBookSeriesRoute()),
        icon: const Icon(Icons.add),
        text: Translations.of(context).profile.menu.author.addBookSeries,
      ),
    ],
  );
}
