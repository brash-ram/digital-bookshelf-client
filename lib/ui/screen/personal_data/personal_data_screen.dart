import 'package:auto_route/auto_route.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:digital_bookshelf_client/bloc/user_info_bloc.dart';
import 'package:digital_bookshelf_client/data/data.dart';
import 'package:digital_bookshelf_client/data/user/personal_data_refs.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/personal_data/widget/personal_data_form.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class PersonalDataScreen extends StatelessWidget {
  const PersonalDataScreen({super.key});

  @override
  Widget build(BuildContext context) =>
    UnFocusKeyboardOutside(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            Translations.of(context).profile.menu.personal.title,
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(defaultValue),
            child: BlocProvider.value(
              value: UserInfoBloc(repository: context.read()),
              child: ModelBlocDataSelector<UserInfoBloc, UserInfo, UserInfo>(
                selector: (e) => e,
                builder: (context, data) => RefreshIndicator(
                  onRefresh: () async => context.read<UserInfoBloc>().update(),
                  child: MultiRepositoryProvider(
                    providers: [
                      RepositoryProvider.value(
                        value: MapperContainer.globals.fromValue<PersonalDataRefs>(data.toMap()),
                      ),
                      RepositoryProvider.value(
                        value: MapperContainer.globals.fromValue<PersonalData>(data.toMap()),
                      ),
                    ],
                    child: const PersonalDataForm(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
}
