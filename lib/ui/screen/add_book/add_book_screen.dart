import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/bloc/book_series_bloc.dart';
import 'package:digital_bookshelf_client/bloc/genre_list_bloc.dart';
import 'package:digital_bookshelf_client/bloc/tag_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/add_book/widget/new_book_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddBookScreen extends StatelessWidget {
  const AddBookScreen({super.key, this.book});

  final NewBook? book;

  @override
  Widget build(BuildContext context) =>
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider.value(
            value: book ?? NewBook(genres: [], tags: []),
          ),
          RepositoryProvider.value(
            value: BookFiles(),
          ),
          BlocProvider.value(
            value: GenreListBloc(repository: context.read()),
          ),
          BlocProvider.value(
            value: BookSeriesBloc(repository: context.read()),
          ),
          BlocProvider.value(
            value: TagBloc(repository: context.read()),
          ),
        ],
        child: UnFocusKeyboardOutside(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                Translations.of(context).addBook.title,
              ),
            ),
            body: const SafeArea(
              child: Padding(
                padding: EdgeInsets.all(smallestValue),
                child: SingleChildScrollView(
                  child: NewBookForm(),
                ),
              ),
            ),
          ),
        ),
      );
}
