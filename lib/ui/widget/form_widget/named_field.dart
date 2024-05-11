import 'package:digital_bookshelf_client/styles.dart';
import 'package:flutter/material.dart';

class NamedField extends StatelessWidget {
  const NamedField({required this.name, required this.child, super.key});

  final String name;
  final Widget child;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        name,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      const SizedBox(height: smallestValue,),
      child,
    ],
  );
}
