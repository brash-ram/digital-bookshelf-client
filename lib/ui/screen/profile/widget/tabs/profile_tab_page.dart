import 'package:digital_bookshelf_client/bloc/user_info_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';

class ProfileTabPage extends StatelessWidget {
  const ProfileTabPage({super.key});

  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<UserInfoBloc, UserInfo, UserInfo>(
    selector: (e) => e,
    builder: (context, data) {
      final T = Translations.of(context);
      final showBirth = data.showBirthType != ShowBirthType.notShow && data.birth != null;
      return SafeArea(
        top: false,
        bottom: false,
        child: CustomScrollView(
          slivers: [
            SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            SliverList.list(
              children: [
                const SizedBox(height: defaultValue,),
                Text(
                  data.about ?? '',
                ),
                SizedBox(height: data.gender != Gender.notShow ? defaultValue : 0.0,),
                if (data.gender != Gender.notShow) Text(
                  '${T.user.person.gender}: ${T.getEnum('gender', data.gender)}',
                ) else const SizedBox(),
                SizedBox(height: showBirth ? defaultValue : 0.0,),
                if (showBirth) Text(
                  '${T.user.person.birth}: ${data.birth!.formatDate()}',
                ) else const SizedBox(),
              ],
            ),
          ],
        ),
      );
    },
  );
}
