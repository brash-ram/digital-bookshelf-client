import 'package:digital_bookshelf_client/bloc/author_info_bloc.dart';
import 'package:digital_bookshelf_client/bloc/user_info_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/profile/widget/author_profile.dart';
import 'package:digital_bookshelf_client/ui/screen/profile/widget/reader_profile.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<UserInfoBloc, UserInfo, int?>(
    selector: (e) => e.authorInfoId,
    builder: (context, data) => context.read<UserInfoBloc>().hasRole(Role.author)
      ? BlocProvider(
        create: (context) => AuthorInfoBloc(repository: context.read(), id: data!),
        child: const AuthorProfile(),
      )
      : const ReaderProfile(),
  );
}
