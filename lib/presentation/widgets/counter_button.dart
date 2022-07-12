import 'package:flutter/material.dart'
    show
        BuildContext,
        FloatingActionButton,
        GestureTapCallback,
        Icon,
        IconData,
        Key,
        SizedBox,
        StatelessWidget,
        Widget;
import 'package:jandj_customer/config/app_theme/app_colors.dart';

class CounterButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  final IconData? icon;
  const CounterButton({Key? key, required this.onPressed, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      width: 28,
      child: FloatingActionButton.small(
        elevation: 0,
        backgroundColor: AppColors.blueColor,
        onPressed: onPressed,
        child: Icon(
          icon,
          size: 16,
        ),
      ),
    );
  }
}
