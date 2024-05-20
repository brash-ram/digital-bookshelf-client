import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({required this.onSelected, required this.icon, required this.values, super.key});

  final void Function(String value) onSelected;
  final Widget icon;
  final List<String> values;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final SearchController controller = SearchController();
  List<String> values = [];

  void listener() {
    values
      ..clear()
      ..add(controller.text)
      ..addAll(
          widget.values.where(
              (e) => e.toLowerCase().contains(controller.text.toLowerCase(),
            ),
          ),
      );
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(listener);
    values.addAll(widget.values.take(5));
  }

  @override
  void dispose() {
    controller.removeListener(listener);
    super.dispose();
  }


  @override
  void didUpdateWidget(SearchWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    values
      ..clear()
      ..add(controller.text)
      ..addAll(
        widget.values.where(
              (e) => e.toLowerCase().contains(controller.text.toLowerCase(),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) => SearchAnchor(
    searchController: controller,
    builder: (context, controller) => IconButton(
      onPressed: () => controller.openView(),
      icon: widget.icon,
    ),
    suggestionsBuilder: (context, controller) => [
      for (final value in values)
        ListTile(
          title: Text(value),
          onTap: () {
            setState(() {
              controller
                ..closeView(value)
                ..text = '';
              widget.onSelected(value);
            });
          },
        ),
    ],
  );

}
