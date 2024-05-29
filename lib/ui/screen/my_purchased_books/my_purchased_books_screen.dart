import 'package:auto_route/annotations.dart';
import 'package:digital_bookshelf_client/bloc/purchased_book_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/my_purchased_books/widget/my_purchased_books_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MyPurchasedBooksScreen extends StatelessWidget {
  const MyPurchasedBooksScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => PurchasedBooksBloc(repository: context.read()),
    child: UnFocusKeyboardOutside(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            Translations.of(context).profile.menu.personal.myPurchased,
          ),
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(smallestValue),
            child: MyPurchasedBooks(),
          ),
        ),
      ),
    ),
  );
}
