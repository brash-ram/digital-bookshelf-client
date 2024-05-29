import 'package:auto_route/annotations.dart';
import 'package:digital_bookshelf_client/bloc/library_bloc.dart';
import 'package:digital_bookshelf_client/bloc/search_books_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/settings/widget/settings_body.dart';
import 'package:digital_bookshelf_client/ui/widget/book_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => UnFocusKeyboardOutside(
    child: Scaffold(
      appBar: AppBar(
        title: Text(
          Translations.of(context).profile.menu.personal.settings,
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(smallValue),
          child: SettingsBody(),
        ),
      ),
    ),
  );
}
