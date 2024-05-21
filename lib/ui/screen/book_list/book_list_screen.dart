import 'package:auto_route/annotations.dart';
import 'package:digital_bookshelf_client/bloc/books_list_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/book_list/widget/book_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class BookListScreen extends StatelessWidget {
  const BookListScreen({super.key, this.authorId});

  final int? authorId;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => BookListBloc(repository: context.read()),
    child: UnFocusKeyboardOutside(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            Translations.of(context).profile.menu.author.books,
          ),
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(smallestValue),
            child: BookList(),
          ),
        ),
      ),
    ),
  );
}
