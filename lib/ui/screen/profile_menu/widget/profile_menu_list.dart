import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/widget/profile_menu_list_item.dart';
import 'package:flutter/material.dart';

class ProfileMenuList extends StatelessWidget {
  const ProfileMenuList({super.key});

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(
          top: defaultValue,
          bottom: smallValue,
          left: defaultValue,
        ),
        child: Text(
          Translations.of(context).profile.menu.personal.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      ProfileMenuListItem(
        onPressed: () {  },
        icon: const Icon(Icons.settings),
        text: Translations.of(context).profile.menu.personal.data,
      ),
    ],
  );
}
