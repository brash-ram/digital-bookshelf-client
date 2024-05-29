import 'package:auto_route/annotations.dart';
import 'package:digital_bookshelf_client/bloc/user_info_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/profile/widget/profile_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, this.userId});

  final int? userId;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => UserInfoBloc(repository: context.read(), id: userId),
    child: const UnFocusKeyboardOutside(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(smallestValue),
            child: ProfileBody(),
          ),
        ),
      ),
    ),
  );
}
