import 'package:digital_bookshelf_client/bloc/genre_list_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/genre_list/widget/genre_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenreListBody extends StatefulWidget {
  const GenreListBody({super.key});

  @override
  State<GenreListBody> createState() => _GenreListBodyState();
}

class _GenreListBodyState extends State<GenreListBody> {
  String genre = '';

  @override
  Widget build(BuildContext context) => Column(
    children: [
      const Expanded(
        child: GenreList(),
      ),
      const SizedBox(height: bigValue,),
      TextFieldWidget(
        onChanged: (value) => genre = value,
        labelText: Translations.of(context).genre.newGenre,
        initText: genre,
      ),
      const SizedBox(height: defaultValue,),
      LoadingButton(
        onPressed: () async {
          final result = await context.read<ApiRepository>().addGenre(genre);
          if (context.mounted) {
            if (result) {
              await context.read<GenreListBloc>().update();
              setState(() {
                genre = '';
              });
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(Translations.of(context).utils.fail),
                ),
              );
            }
          }
        },
        child: Text(
          Translations.of(context).utils.save,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    ],
  );
}
