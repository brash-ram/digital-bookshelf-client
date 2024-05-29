import 'package:auto_route/annotations.dart';
import 'package:digital_bookshelf_client/bloc/genre_books_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/book_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class GenreBooksScreen extends StatelessWidget {
  const GenreBooksScreen({required this.genre, super.key});

  final String genre;

  @override
  Widget build(BuildContext context) =>
      BlocProvider(
        create: (context) => GenreBooksBloc(repository: context.read(), genre: genre),
        child: UnFocusKeyboardOutside(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                genre,
              ),
            ),
            body: const SafeArea(
              child: Padding(
                padding: EdgeInsets.all(smallestValue),
                child: BookList<GenreBooksBloc>(),
              ),
            ),
          ),
        ),
      );
}
