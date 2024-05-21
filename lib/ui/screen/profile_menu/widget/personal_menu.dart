import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/core/storages/token_storage.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/widget/profile_menu_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalMenu extends StatelessWidget {
  const PersonalMenu({super.key});

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
          Translations.of(context).profile.menu.personal.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      ProfileMenuListItem(
        onPressed: () async => AutoRouter.of(context).navigate(const PersonalDataRoute()),
        icon: const Icon(Icons.settings),
        text: Translations.of(context).profile.menu.personal.main,
      ),
      ProfileMenuListItem(
        onPressed: () async => AutoRouter.of(context).navigate(const PersonalDataRefsRoute()),
        icon: const Icon(Icons.alternate_email),
        text: Translations.of(context).profile.menu.personal.contact,
      ),
      ProfileMenuListItem(
        onPressed: () async {
          context.read<AuthController>().token = null;
          await context.read<TokenStorage>().removeTokens();
          if (context.mounted)
            await AutoRouter.of(context).replace(const ProfileMenuRoute());
        },
        icon: const Icon(Icons.logout),
        text: Translations.of(context).profile.menu.personal.logout,
      ),
    ],
  );
}
