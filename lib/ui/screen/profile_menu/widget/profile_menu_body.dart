import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/widget/profile_menu_header.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/widget/profile_menu_list.dart';
import 'package:flutter/material.dart';

class ProfileMenuBody extends StatelessWidget {
  const ProfileMenuBody({super.key});

  @override
  Widget build(BuildContext context) => const SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: bigValue,),
        ProfileMenuHeader(),
        SizedBox(height: bigValue,),
        ProfileMenuList(),
      ],
    ),
  );
}
