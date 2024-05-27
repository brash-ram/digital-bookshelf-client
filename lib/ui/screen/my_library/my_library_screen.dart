import 'package:auto_route/annotations.dart';
import 'package:digital_bookshelf_client/bloc/books_list_bloc.dart';
import 'package:digital_bookshelf_client/bloc/library_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/my_library/widget/my_library_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MyLibraryScreen extends StatelessWidget {
  const MyLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => LibraryBloc(repository: context.read()),
    child: UnFocusKeyboardOutside(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            Translations.of(context).profile.menu.personal.myLibrary,
          ),
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(smallestValue),
            child: MyLibraryBody(),
          ),
        ),
      ),
    ),
  );
}
