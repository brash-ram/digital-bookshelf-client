import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/widget/profile_menu_list_item.dart';
import 'package:flutter/material.dart';

class ProfileMenuAdmin extends StatelessWidget {
  const ProfileMenuAdmin({super.key});

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
          Translations.of(context).profile.menu.admin.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      ProfileMenuListItem(
        onPressed: () async => AutoRouter.of(context).navigate(const GenreListRoute()),
        icon: const Icon(Icons.list_alt),
        text: Translations.of(context).profile.menu.admin.genres,
      ),
    ],
  );
}
