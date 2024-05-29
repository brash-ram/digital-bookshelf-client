import 'package:auto_route/annotations.dart';
import 'package:digital_bookshelf_client/bloc/library_bloc.dart';
import 'package:digital_bookshelf_client/bloc/search_books_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/book_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SearchBookListScreen extends StatelessWidget {
  const SearchBookListScreen({required this.name, super.key});

  final String name;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => SearchBooksBloc(repository: context.read(), name: name,),
    child: UnFocusKeyboardOutside(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            name,
          ),
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(smallestValue),
            child: BookList<SearchBooksBloc>(),
          ),
        ),
      ),
    ),
  );
}
