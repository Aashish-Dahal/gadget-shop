import 'package:flutter/material.dart'
    show
        BuildContext,
        Color,
        Colors,
        GestureTapCallback,
        Key,
        MaterialButton,
        StatelessWidget,
        Widget;
import 'package:jandj_customer/config/app_theme/app_colors.dart';

enum ButtonType { filled, outlined, transparent }

enum ButtonSize {
  small,
  medium,
  large,
}

class Button extends StatelessWidget {
  final GestureTapCallback onPressed;
  final ButtonSize? size;
  final Color? textColor;
  final ButtonType? type;
  final Widget child;
  const Button(
      {Key? key,
      this.textColor,
      required this.onPressed,
      required this.child,
      this.type = ButtonType.filled,
      this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      textColor: textColor ?? Colors.white,
      height: 45,
      minWidth: ((size == ButtonSize.medium)
          ? 150
          : (size == ButtonSize.small)
              ? 80
              : double.infinity),
      color: type == ButtonType.filled ? AppColors.primaryColor : null,
      onPressed: onPressed,
      child: child,
    );
  }
}
