import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/core/router/router.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:flutter/material.dart';

class ProfileMenuAuth extends StatelessWidget {
  const ProfileMenuAuth({super.key});

  @override
  Widget build(BuildContext context) => Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Translations.of(context).profile.notAuthorized,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: defaultValue,),
        ElevatedButton(
          onPressed: () async =>
              AutoRouter.of(context).replaceAll([const AuthRoute()]),
          child: Text(
            Translations.of(context).profile.goAuth,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    ),
  );
}
