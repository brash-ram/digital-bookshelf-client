import 'package:auto_route/annotations.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/add_book_series/widget/add_series_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class BookScreen extends StatelessWidget {
  const BookScreen({required this.id, super.key});

  final int id;

  @override
  Widget build(BuildContext context) =>
      RepositoryProvider.value(
        value:  SimpleBookSeries(id: -1),
        child: UnFocusKeyboardOutside(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                Translations.of(context).bookSeries.title,
              ),
            ),
            body: const SafeArea(
              child: Padding(
                padding: EdgeInsets.all(smallestValue),
                child: SingleChildScrollView(
                  child: AddSeriesScreen(),
                ),
              ),
            ),
          ),
        ),
      );
}
