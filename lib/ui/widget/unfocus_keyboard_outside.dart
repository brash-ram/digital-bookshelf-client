import 'package:flutter/material.dart';

class UnFocusKeyboardOutside extends StatelessWidget {

  const UnFocusKeyboardOutside({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: child,
    );
}
