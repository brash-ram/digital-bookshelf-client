import 'package:digital_bookshelf_client/styles.dart';
import 'package:flutter/material.dart';

class ChipHorizontalList extends StatelessWidget {
  const ChipHorizontalList({required this.values, required this.onDelete, super.key});

  final List<String> values;
  final void Function(String value) onDelete;

  @override
  Widget build(BuildContext context) => ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: values.length,
    itemBuilder: (context, i) => Padding(
      padding: const EdgeInsets.only(right: smallValue),
      child: Chip(
        label: Text(
          values[i],
        ),
        deleteIcon: const Icon(
          Icons.remove,
        ),
        onDeleted: () {
          onDelete(values[i]);
        },
      ),
    ),
  );
}
