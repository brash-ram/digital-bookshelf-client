import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/core/router/router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
    routes: const [
      ProfileMenuRoute(),
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
            'Главная',
        ),
        _buildBarItem(
            Icons.list,
            'Жанры',
        ),
        _buildBarItem(
            Icons.my_library_books_rounded,
            'Библиотека',
        ),
        _buildBarItem(
            Icons.person,
            'Профиль',
        ),
      ],
    ),
  );

  BottomNavigationBarItem _buildBarItem(IconData icon, String label) => BottomNavigationBarItem(
    icon: Icon(
      icon,
    ),
    label: label,
  );
}
