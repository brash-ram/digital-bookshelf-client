import 'package:digital_bookshelf_client/bloc/purchased_book_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/my_purchased_books/widget/purchased_book_widget.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyPurchasedBooks extends StatelessWidget {
  const MyPurchasedBooks({super.key});

  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<PurchasedBooksBloc, List<PurchasedBook>, List<PurchasedBook>>(
    selector: (e) => e,
    builder: (context, data) => ListView.separated(
      itemCount: data.length,
      itemBuilder: (context, index) => MultiRepositoryProvider(
        providers: [
          RepositoryProvider.value(
            value: data[index],
          ),
        ],
        child: const PurchasedBookWidget(),
      ),
      separatorBuilder: (context, index) => const Divider(),
    ),
  );
}
