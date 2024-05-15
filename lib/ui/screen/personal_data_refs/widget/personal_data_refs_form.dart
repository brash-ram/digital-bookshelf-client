import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/bloc/user_info_bloc.dart';
import 'package:digital_bookshelf_client/data/user/personal_data_refs.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/form_widget/named_field.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalDataRefsForm extends StatelessWidget {
  const PersonalDataRefsForm({super.key});

  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<UserInfoBloc, UserInfo, UserInfo>(
    selector: (e) => e,
    builder: (context, data) {
      final T = Translations.of(context);
      final personalData = T.personalData;
      final refs = context.read<PersonalDataRefs>();
      return ListView(
        children: [
          Text(
            personalData.contact,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: defaultValue,),
          NamedField(
            name: T.user.contact.site,
            child: TextFieldWidget(
              onChanged: (value) => refs.refSite = value,
              initText: refs.refSite,
              maxLines: 3,
            ),
          ),
          const SizedBox(height: bigValue,),
          NamedField(
            name: T.user.contact.email,
            child: TextFieldWidget(
              onChanged: (value) => refs.refEmail = value,
              initText: refs.refEmail,
              maxLines: 3,
            ),
          ),
          const SizedBox(height: bigValue,),
          NamedField(
            name: T.user.contact.tg,
            child: TextFieldWidget(
              onChanged: (value) => refs.refTg = value,
              initText: refs.refTg,
              maxLines: 3,
            ),
          ),
          const SizedBox(height: bigValue,),
          NamedField(
            name: T.user.contact.vk,
            child: TextFieldWidget(
              onChanged: (value) => refs.refVk = value,
              initText: refs.refVk,
              maxLines: 3,
            ),
          ),
          const SizedBox(height: bigValue,),
          LoadingButton(
            onPressed: () async {
              final result = await context.read<ApiRepository>().changeUserRefs(refs);
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
        ],
      );
    },
  );
}
