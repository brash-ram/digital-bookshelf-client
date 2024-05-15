import 'package:auto_route/annotations.dart';
import 'package:digital_bookshelf_client/bloc/genre_list_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/genre_list/widget/genre_list_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class GenreListScreen extends StatelessWidget {
  const GenreListScreen({super.key});

  @override
  Widget build(BuildContext context) =>
    BlocProvider(
      create: (context) => GenreListBloc(repository: context.read()),
      child: UnFocusKeyboardOutside(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              Translations.of(context).genre.menuTitle,
            ),
          ),
          body: const SafeArea(
            child: Padding(
              padding: EdgeInsets.all(smallestValue),
              child: GenreListBody(),
            ),
          ),
        ),
      ),
    );
}
