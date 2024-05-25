import 'package:digital_bookshelf_client/bloc/user_info_bloc.dart';
import 'package:digital_bookshelf_client/data/user/user_info.dart';
import 'package:digital_bookshelf_client/i18n/strings.g.dart';
import 'package:digital_bookshelf_client/ui/screen/profile/widget/profile_simple_info.dart';
import 'package:digital_bookshelf_client/ui/screen/profile/widget/tabs/library_tab_page.dart';
import 'package:digital_bookshelf_client/ui/screen/profile/widget/tabs/profile_tab_page.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';

class ReaderProfile extends StatelessWidget {
  const ReaderProfile({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 2,
    initialIndex: 0,
    child: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverOverlapAbsorber(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          sliver: SliverAppBar(
            title: ModelBlocDataSelector<UserInfoBloc, UserInfo, String>(
              selector: (e) => e.name,
              builder: (context, data) => Text(
                data,
              ),
            ),
            forceElevated: innerBoxIsScrolled,
            bottom: PreferredSize(
              preferredSize: Size(
                MediaQuery.of(context).size.width,
                250,
              ),
              child: Column(
                children: [
                  const ProfileSimpleInfo(),
                  TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(text: Translations.of(context).profile.profileTab),
                      Tab(text: Translations.of(context).profile.libraryTab),
                    ],
                  ),
                ],
              ),
            )
          ),
        ),
      ],
      body: const TabBarView(
        children: [
          ProfileTabPage(),
          LibraryTabPage(),
        ],
      ),
    ),
  );
}
