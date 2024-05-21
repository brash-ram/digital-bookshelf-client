import 'package:digital_bookshelf_client/bloc/user_info_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/widget/admin_menu.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/widget/author_menu.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/widget/personal_menu.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileMenuList extends StatelessWidget {
  const ProfileMenuList({super.key});

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const PersonalMenu(),
      ModelBlocDataSelector<UserInfoBloc, UserInfo, UserInfo>(
        selector: (e) => e,
        builder: (context, data) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (context.read<UserInfoBloc>().hasRole(Role.author)) const AuthorMenu()
            else const SizedBox(),
            if (context.read<UserInfoBloc>().hasRole(Role.admin)) const ProfileMenuAdmin()
            else const SizedBox(),
          ],
        ),
      ),
    ],
  );
}
