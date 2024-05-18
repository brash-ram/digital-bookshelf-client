import 'package:digital_bookshelf_client/ui/screen/profile_menu/widget/admin_menu.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/widget/author_menu.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/widget/personal_menu.dart';
import 'package:flutter/material.dart';

class ProfileMenuList extends StatelessWidget {
  const ProfileMenuList({super.key});

  @override
  Widget build(BuildContext context) => const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      PersonalMenu(),
      AuthorMenu(),
      ProfileMenuAdmin(),
    ],
  );
}
