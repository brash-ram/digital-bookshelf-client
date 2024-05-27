import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/bloc/user_info_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/widget/profile_menu_auth.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/widget/profile_menu_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProfileMenuScreen extends StatelessWidget {
  const ProfileMenuScreen({super.key});

  @override
  Widget build(BuildContext context) =>
    UnFocusKeyboardOutside(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(smallestValue),
            child: Builder(
              builder: (context) {
                if (context.read<AuthController>().hasAuth) {
                  return BlocProvider.value(
                    value: UserInfoBloc(repository: context.read()),
                    child: Builder(
                      builder: (context) => RefreshIndicator(
                        onRefresh: () async => context.read<UserInfoBloc>().update(),
                        child: const ProfileMenuBody(),
                      ),
                    ),
                  );
                }

                return const ProfileMenuAuth();
              },
            ),
          ),
        ),
      ),
    );
}
