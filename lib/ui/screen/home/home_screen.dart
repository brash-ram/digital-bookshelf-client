import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/core/router/router.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final T = Translations.of(context).menu;
    return AutoTabsScaffold(
      routes: const [
        GeneralRoute(),
        GenreListBooksRoute(),
        MyLibraryRoute(),
        ProfileMenuRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: [
          _buildBarItem(
              Icons.home,
              T.home,
          ),
          _buildBarItem(
              Icons.list,
              T.genre,
          ),
          _buildBarItem(
              Icons.my_library_books_rounded,
              T.library,
          ),
          _buildBarItem(
              Icons.person,
              T.profile,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildBarItem(IconData icon, String label) => BottomNavigationBarItem(
    icon: Icon(
      icon,
    ),
    label: label,
  );
}
