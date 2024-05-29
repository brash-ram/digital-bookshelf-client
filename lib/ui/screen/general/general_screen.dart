import 'package:auto_route/annotations.dart';
import 'package:digital_bookshelf_client/bloc/book_names_bloc.dart';
import 'package:digital_bookshelf_client/bloc/home_last_books_bloc.dart';
import 'package:digital_bookshelf_client/bloc/home_recommended_book_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/general/widget/general_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class GeneralScreen extends StatelessWidget {
  const GeneralScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiRepositoryProvider(
    providers: [
      BlocProvider(
        create: (context) => BookNamesBloc(repository: context.read()),
      ),
      BlocProvider(
        create: (context) => HomeLastBookBloc(repository: context.read()),
      ),
      BlocProvider(
        create: (context) => HomeRecommendedBookBloc(repository: context.read()),
      ),
    ],
    child: const UnFocusKeyboardOutside(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(smallestValue),
            child: GeneralBody(),
          ),
        ),
      ),
    ),
  );
}
