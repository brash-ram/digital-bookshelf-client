import 'package:digital_bookshelf_client/core/style/app_decorations.dart';
import 'package:easy_loading_button/easy_loading_button.dart';
import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({required this.child, this.onPressed, super.key, this.color, this.height, this.width});

  final Widget child;
  final Color? color;
  final double? height;
  final double? width;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) => EasyButton(
      type: EasyButtonType.elevated,
      idleStateWidget: child,
      loadingStateWidget: const Padding(
        padding: EdgeInsets.all(smallValue),
        child: CircularProgressIndicator(
          strokeWidth: 3.0,
          valueColor: AlwaysStoppedAnimation<Color>(
            Colors.white,
          ),
        ),
      ),
      useWidthAnimation: false,
      useEqualLoadingStateWidgetDimension: true,
      width: width ?? double.infinity,
      height: height ?? 20.0,
      borderRadius: defaultValue,
      elevation: 0.0,
      buttonColor: color ?? Theme.of(context).primaryColor,
      onPressed: onPressed,
    );
}
