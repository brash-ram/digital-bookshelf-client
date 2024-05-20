import 'package:digital_bookshelf_client/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_select/flutter_awesome_select.dart';

class GenreSelectWidget extends StatefulWidget {
  const GenreSelectWidget({required this.values, required this.onChange, super.key});

  final List<String> values;
  final void Function(List<String> values) onChange;

  @override
  State<GenreSelectWidget> createState() => _GenreSelectWidgetState();
}

class _GenreSelectWidgetState extends State<GenreSelectWidget> {
  List<String> selected = [];

  @override
  Widget build(BuildContext context) => SmartSelect<String>.multiple(
    title: Translations.of(context).book.genres,
    selectedValue: selected,
    choiceItems: widget.values
        .map((e) => S2Choice<String>(value: e, title: e))
        .toList(),
    modalType: S2ModalType.popupDialog,
    onChange: (e) => setState(() {
      selected = e.value;
      widget.onChange(selected);
    }),
    // onModalClose: (state, test) => widget.onChange(selected),
    tileBuilder: (context, state) => S2Tile.fromState(
      state,
      hideValue: true,
      isTwoLine: false,
    ),
  );
}
