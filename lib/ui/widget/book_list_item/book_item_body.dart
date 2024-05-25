import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/add_book/widget/price_widget.dart';
import 'package:digital_bookshelf_client/ui/widget/blurhash_image.dart';
import 'package:digital_bookshelf_client/ui/widget/book_price_wdget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookItemBody extends StatelessWidget {
  const BookItemBody({super.key});

  @override
  Widget build(BuildContext context) {
    final book = context.read<BookListItem>();
    return Row(
    children: [
      SizedBox(
        height: 100.0,
        width: 70.0,
        child: BlurhashImage(image: book.cover),
      ),
      const SizedBox(width: smallestValue,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              book.name,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: smallestValue,),
            Text(
              book.authorName,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(width: smallestValue,),
            Text(
              book.genreNames.join(', '),
            ),
            const SizedBox(width: smallestValue,),
            BookPriceWidget(
              price: book.price,
              priceType: book.priceType,
            ),
          ],
        ),
      ),
    ],
  );
  }
}
