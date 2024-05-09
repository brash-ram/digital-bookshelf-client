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
      ProfileMenuRoute(),
    ],
    bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: tabsRouter.activeIndex,
      onTap: tabsRouter.setActiveIndex,
      // selectedItemColor: primary,
      // unselectedItemColor: black,
      // selectedLabelStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
      //     color: primary
      // ),
      // unselectedLabelStyle: Theme.of(context).textTheme.labelSmall,
      items: [
        _buildBarItem(
            Icons.home,
            'Главная',
        ),
        _buildBarItem(
            Icons.person,
            'Профиль',
        ),
        // CustomBottomNavigationBarItem.build(
        //     catalog, "Главная", context
        // ),
        // CustomBottomNavigationBarItem.build(
        //     catalog, "Каталог", context
        // ),
        // CustomBottomNavigationBarItem.build(
        //     megaphone, "Объявления", context
        // ),
        // CustomBottomNavigationBarItem.build(
        //     heartEmpty, "Избранное", context
        // ),
        // CustomBottomNavigationBarItem.build(
        //     cart, "Корзина", context
        // ),
        // CustomBottomNavigationBarItem.build(
        //     user, "Профиль", context
        // )
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
