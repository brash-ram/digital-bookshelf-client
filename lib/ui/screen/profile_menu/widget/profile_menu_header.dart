import 'package:digital_bookshelf_client/bloc/user_info_bloc.dart';
import 'package:digital_bookshelf_client/data/data.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/blurhash_image.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';

class ProfileMenuHeader extends StatelessWidget {
  const ProfileMenuHeader({super.key});

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ModelBlocDataSelector<UserInfoBloc, UserInfo, ImageModel>(
        selector: (e) => e.profileImage,
        builder: (context, data) => CircleAvatar(
          radius: 50.0,
          backgroundColor: Theme.of(context).colorScheme.background,
          child: BlurhashImage(
            image: data,
          ),
        ),
      ),
      const SizedBox(height: bigValue,),
      ModelBlocDataSelector<UserInfoBloc, UserInfo, String>(
        selector: (e) => e.name,
        builder: (context, data) => Text(
          data,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
