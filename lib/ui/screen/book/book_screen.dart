import 'package:auto_route/annotations.dart';
import 'package:digital_bookshelf_client/bloc/author_info_bloc.dart';
import 'package:digital_bookshelf_client/bloc/book_bloc.dart';
import 'package:digital_bookshelf_client/bloc/similar_books_bloc.dart';
import 'package:digital_bookshelf_client/bloc/user_info_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/book/widget/book_body.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class BookScreen extends StatelessWidget {
  const BookScreen({required this.id, super.key});

  final int id;

  @override
  Widget build(BuildContext context) =>
    BlocProvider.value(
      value: BookBloc(repository: context.read(), id: id),
      child: Builder(
        builder: (context) => UnFocusKeyboardOutside(
          child: Scaffold(
            appBar: AppBar(
              title: ModelBlocDataSelector<BookBloc, Book, String>(
                selector: (e) => e.name,
                builder: (context, data) => Text(
                  data,
                ),
              ),
            ),
            body: ModelBlocDataSelector<BookBloc, Book, Book>(
              selector: (e) => e,
              builder: (context, book) => BlocProvider(
                create: (context) => AuthorInfoBloc(repository: context.read(), id: book.authorId),
                child: ModelBlocDataSelector<AuthorInfoBloc, AuthorInfo, int>(
                  selector: (e) => e.userId,
                  builder: (context, data) => BlocProvider(
                  create: (context) => UserInfoBloc(repository: context.read(), id: data),
                  child: BlocProvider(
                    create: (context) => SimilarBooksBloc(repository: context.read(), id: book.id),
                    child: const SafeArea(
                      child: Padding(
                        padding: EdgeInsets.all(smallestValue),
                        child: BookBody(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
