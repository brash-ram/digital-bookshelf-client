import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/bloc/genre_list_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';

class GenreListBooksBody extends StatelessWidget {
  const GenreListBooksBody({super.key});

  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<GenreListBloc, List<String>, List<String>>(
    selector: (e) => e,
    builder: (context, data) => ListView.separated(
      itemCount: data.length,
      itemBuilder: (context, i) => ListTile(
        onTap: () async {
          await AutoRouter.of(context).navigate(GenreBooksRoute(genre: data[i]));
        },
        title: Text(
          data[i],
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.black,
          ),
        ),
      ),
      separatorBuilder: (context, i) => const Divider(),
    ),
  );
}
