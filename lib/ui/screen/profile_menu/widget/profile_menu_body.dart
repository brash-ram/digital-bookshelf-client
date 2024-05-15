import 'package:digital_bookshelf_client/bloc/user_info_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/widget/profile_menu_header.dart';
import 'package:digital_bookshelf_client/ui/screen/profile_menu/widget/profile_menu_list.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';

class ProfileMenuBody extends StatelessWidget {
  const ProfileMenuBody({super.key});

  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<UserInfoBloc, UserInfo, UserInfo>(
    selector: (e) => e,
    builder: (context, data) => const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: bigValue,),
          ProfileMenuHeader(),
          SizedBox(height: biggestValue,),
          ProfileMenuList(),
        ],
      ),
    ),
  );
}
