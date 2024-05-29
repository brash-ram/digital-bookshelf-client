import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/core/router/router.dart';
import 'package:digital_bookshelf_client/data/book/book_name.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:flutter/material.dart';

class BookSearch extends StatefulWidget {

  const BookSearch({required this.values, super.key});

  final List<BookName> values;

  @override
  State<BookSearch> createState() => _BookSearchState();
}

class _BookSearchState extends State<BookSearch> {
  final SearchController controller = SearchController();
  List<String> values = [];

  void listener() {
    values
      ..clear()
      ..add(controller.text)
      ..addAll(
          widget.values
              .where((e) => e.name.toLowerCase().contains(controller.text.toLowerCase()))
              .map((e) => e.name)
              .toList(),
      );
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(listener);
    values.addAll(widget.values.map((e) => e.name).toList());
  }

  @override
  void dispose() {
    controller.removeListener(listener);
    super.dispose();
  }

  @override
  void didUpdateWidget(BookSearch oldWidget) {
    super.didUpdateWidget(oldWidget);
    values
      ..clear()
      ..add(controller.text)
      ..addAll(
        widget.values
            .where((e) => e.name.toLowerCase().contains(controller.text.toLowerCase()))
            .map((e) => e.name)
            .toList(),
      );
  }

  @override
  Widget build(BuildContext context) => SearchAnchor(
    searchController: controller,
    builder: (context, controller) => SearchBar(
      controller: controller,
      onTap: () {
        controller.openView();
      },
      onChanged: (_) {
        controller.openView();
      },
      leading: const Icon(Icons.search),
    ),
    suggestionsBuilder: (context, controller) => [
      for (final value in values)
        ListTile(
          title: Text(value),
          onTap: () async {
            FocusScope.of(context).unfocus();
            if (widget.values.where((e) => e.name.toLowerCase() == controller.text.toLowerCase()).isNotEmpty) {
              final name = widget.values.where((e) => e.name.toLowerCase().contains(controller.text.toLowerCase())).first;
              await AutoRouter.of(context).navigate(BookRoute(id: name.id));
            } else {
              await AutoRouter.of(context).navigate(SearchBookListRoute(name: controller.text));
            }
            setState(() {
              controller
                ..closeView(value)
                ..text = '';
            });
          },
        ),
    ],
  );
}
