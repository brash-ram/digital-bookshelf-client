import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/bloc/author_info_bloc.dart';
import 'package:digital_bookshelf_client/bloc/book_bloc.dart';
import 'package:digital_bookshelf_client/bloc/user_info_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/add_book/widget/price_widget.dart';
import 'package:digital_bookshelf_client/ui/widget/book_price_wdget.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';

class BookInfoText extends StatelessWidget {
  const BookInfoText({super.key});

  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<BookBloc, Book, Book>(
    selector: (e) => e,
    builder: (context, data) {
      final T = Translations.of(context);
      final hasSeries = data.series != null;
      final isSelling = data.priceType == PriceType.selling;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: defaultValue,),
          ModelBlocDataSelector<UserInfoBloc, UserInfo, UserInfo>(
            selector: (e) => e,
            builder: (context, data) => InkWell(
              onTap: () async => AutoRouter.of(context).navigate(ProfileRoute(userId: data.id)),
              child: Text(
                data.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          const SizedBox(height: smallValue,),
          Text(
            data.genreNames.join(', '),
          ),
          SizedBox(height: hasSeries ? smallValue : 0.0,),
          if (hasSeries) Text(
            '${T.book.bookSeries}: ${data.series!.name}',
          ) else const SizedBox(),
          SizedBox(height: isSelling ? smallValue : 0.0,),
          if (isSelling) BookPriceWidget(
            price: data.price,
            priceType: data.priceType
          ) else const SizedBox(),
          const SizedBox(height: smallValue,),
          Row(
            children: [
              const Icon(
                Icons.tag
              ),
              const SizedBox(width: smallValue,),
              Text(
                data.tagNames.join(', '),
              ),
            ],
          ),
        ],
      );
    },
  );
}
