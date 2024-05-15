import 'package:digital_bookshelf_client/bloc/genre_list_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenreList extends StatelessWidget {
  const GenreList({super.key});

  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<GenreListBloc, List<String>, List<String>>(
    selector: (e) => e,
    builder: (context, data) => ListView.separated(
      itemCount: data.length,
      itemBuilder: (context, i) => ListTile(
        title: Text(
          data[i],
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.black,
          ),
        ),
        trailing: IconButton(
          onPressed: () async {
            final result = await context.read<ApiRepository>().deleteGenre(data[i]);
            if (context.mounted) {
              if (result) {
                await context.read<GenreListBloc>().update();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(Translations.of(context).utils.fail),
                  ),
                );
              }
            }
          },
          icon: const Icon(Icons.delete),
        ),
      ),
      separatorBuilder: (context, i) => const Divider(),
    ),
  );
}
