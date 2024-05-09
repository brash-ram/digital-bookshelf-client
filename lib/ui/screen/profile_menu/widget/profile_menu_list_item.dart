import 'package:flutter/material.dart';

class ProfileMenuListItem extends StatelessWidget {
  const ProfileMenuListItem({required this.onPressed, required this.icon, required this.text, super.key});

  final void Function() onPressed;
  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) => ListTile(
    onTap: onPressed,
    leading: icon,
    title: Text(
      text,
      style: Theme.of(context).textTheme.titleMedium,
    ),
  );
}
