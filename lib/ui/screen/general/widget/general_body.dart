import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/bloc/book_names_bloc.dart';
import 'package:digital_bookshelf_client/bloc/home_last_books_bloc.dart';
import 'package:digital_bookshelf_client/bloc/home_recommended_book_bloc.dart';
import 'package:digital_bookshelf_client/core/router/router.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/general/widget/block_header.dart';
import 'package:digital_bookshelf_client/ui/screen/general/widget/book_search.dart';
import 'package:digital_bookshelf_client/ui/widget/book_list_item/book_list_item_widget.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GeneralBody extends StatelessWidget {
  const GeneralBody({super.key});

  @override
  Widget build(BuildContext context) => Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ModelBlocDataSelector<BookNamesBloc, List<BookName>, List<BookName>>(
            selector: (e) => e,
            builder: (context, data) => BookSearch(values: data,),
          ),
        ),
        Expanded(
          child: context.read<AuthController>().hasAuth ? getAllGeneral(context) : getGhostGeneral(context)
        ),
      ],
    );

  Widget getAllGeneral(BuildContext context) {
    final T = Translations.of(context);
    return ModelBlocDataSelector<HomeRecommendedBookBloc, List<BookListItem>, List<BookListItem>>(
      selector: (e) => e,
      builder: (context, recommendedBooks) => ModelBlocDataSelector<HomeLastBookBloc, List<BookListItem>, List<BookListItem>>(
        selector: (e) => e,
        builder: (context, lastBooks) => CustomScrollView(
          slivers: [
            if (recommendedBooks.isNotEmpty) BlockHeader(
              title: T.general.recommendedBooks,
              onPressed: () async {
                await AutoRouter.of(context).navigate(const RecommendedBooksRoute());
              },
            ),
            if (recommendedBooks.isNotEmpty) SliverList.separated(
              itemCount: recommendedBooks.length,
              itemBuilder: (context, index) => MultiRepositoryProvider(
                providers: [
                  RepositoryProvider.value(
                    value: lastBooks[index],
                  ),
                ],
                child: const BookListItemWidget(),
              ),
              separatorBuilder: (context, index) => const Divider(),
            ),

            BlockHeader(
              title: T.general.lastBooks,
              onPressed: () async {
                await AutoRouter.of(context).navigate(const LastBooksRoute());
              },
            ),

            SliverList.separated(
              itemCount: lastBooks.length,
              itemBuilder: (context, index) => MultiRepositoryProvider(
                providers: [
                  RepositoryProvider.value(
                    value: lastBooks[index],
                  ),
                ],
                child: const BookListItemWidget(),
              ),
              separatorBuilder: (context, index) => const Divider(),
            ),
          ],
        ),
      ),
    );
  }

  Widget getGhostGeneral(BuildContext context) {
    final T = Translations.of(context);
    return ModelBlocDataSelector<HomeLastBookBloc, List<BookListItem>, List<BookListItem>>(
      selector: (e) => e,
      builder: (context, lastBooks) => CustomScrollView(
        slivers: [
          BlockHeader(
            title: T.general.lastBooks,
            onPressed: () async {
              await AutoRouter.of(context).navigate(const LastBooksRoute());
            },
          ),

          SliverList.separated(
            itemCount: lastBooks.length,
            itemBuilder: (context, index) => MultiRepositoryProvider(
              providers: [
                RepositoryProvider.value(
                  value: lastBooks[index],
                ),
              ],
              child: const BookListItemWidget(),
            ),
            separatorBuilder: (context, index) => const Divider(),
          ),
        ],
      ),
    );
  }
}
