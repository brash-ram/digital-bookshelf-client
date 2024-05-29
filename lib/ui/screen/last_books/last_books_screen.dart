import 'package:auto_route/annotations.dart';
import 'package:digital_bookshelf_client/bloc/books_list_bloc.dart';
import 'package:digital_bookshelf_client/bloc/last_book_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/book_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LastBooksScreen extends StatelessWidget {
  const LastBooksScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => LastBookBloc(repository: context.read()),
    child: UnFocusKeyboardOutside(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            Translations.of(context).general.lastBooks,
          ),
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(smallestValue),
            child: BookList<LastBookBloc>(),
          ),
        ),
      ),
    ),
  );
}
