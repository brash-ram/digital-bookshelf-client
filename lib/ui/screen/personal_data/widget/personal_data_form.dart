import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/bloc/user_info_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/personal_data/widget/personal_data_birth_field.dart';
import 'package:digital_bookshelf_client/ui/widget/dropdown_widget.dart';
import 'package:digital_bookshelf_client/ui/widget/form_widget/named_field.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:digital_bookshelf_client/ui/widget/role_widget.dart';
import 'package:easy_loading_button/easy_loading_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalDataForm extends StatelessWidget {
  const PersonalDataForm({super.key});

  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<UserInfoBloc, UserInfo, UserInfo>(
    selector: (e) => e,
    builder: (context, data) {
      final T = Translations.of(context);
      final personalData = T.personalData;
      final model = context.read<PersonalData>();
      return Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Text(
                  personalData.mainInfo,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: defaultValue,),
                NamedField(
                  name: personalData.name,
                  child: TextFieldWidget(
                    onChanged: (value) => model.name = value,
                    initText: model.name,
                    maxLines: 10,
                  ),
                ),
                const SizedBox(height: bigValue,),
                NamedField(
                  name: personalData.status,
                  child: TextFieldWidget(
                    onChanged: (value) => model.lifeStatus = value,
                    initText: model.lifeStatus,
                    maxLines: 10,
                    maxLength: 500,
                  ),
                ),
                const SizedBox(height: bigValue,),
                NamedField(
                  name: personalData.birth,
                  child: const PersonalDataBirthField(),
                ),
                const SizedBox(height: defaultValue,),
                DropdownWidget<ShowBirthType>(
                  initText: T.getEnum('showBirthType', model.showBirthType),
                  values: {
                    for (final value in ShowBirthType.values)
                      T.getEnum('showBirthType', value) : value,
                  },
                  onPressed: (value) => model.showBirthType = value,
                ),
                const SizedBox(height: bigValue,),
                NamedField(
                  name: personalData.sex,
                  child: DropdownWidget<Gender>(
                    initText: T.getEnum('gender', model.gender),
                    values: {
                      for (final value in Gender.values)
                        T.getEnum('gender', value) : value,
                    },
                    onPressed: (value) => model.gender = value,
                  ),
                ),
                const SizedBox(height: bigValue,),
                NamedField(
                  name: personalData.about,
                  child: TextFieldWidget(
                    onChanged: (value) => model.about = value,
                    initText: model.about,
                    maxLines: 30,
                    maxLength: 10000,
                  ),
                ),
                const SizedBox(height: biggerValue,),
                RoleWidget(
                  roles: const [Role.author],
                  exclude: true,
                  child: LoadingButton(
                    type: EasyButtonType.outlined,
                    onPressed: () async {
                      final result = await showConfirmDialog(
                        context: context,
                        message: T.alert.confirmBecomeAuthor,
                      );
                      if (result != null && result) {
                        if (context.mounted)
                          await context.read<ApiRepository>().becomeAuthor();
            
                        if (context.mounted)
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(Translations.of(context).alert.helloAuthor),
                            ),
                          );
                      }
                    },
                    child: Text(
                      T.utils.becomeAuthor,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: smallValue),
            child: LoadingButton(
              onPressed: () async {
                final result = await context.read<ApiRepository>().changeUserInfo(model);
                if (context.mounted) {
                  if (result) {
                    await AutoRouter.of(context).pop();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(T.utils.fail),
                      ),
                    );
                  }
                }
              },
              child: Text(
                T.utils.save,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
