import 'package:flutter/material.dart'
    show
        BuildContext,
        Colors,
        Icon,
        IconData,
        InputDecoration,
        Key,
        StatelessWidget,
        TextEditingController,
        TextFormField,
        TextInputAction,
        TextInputType,
        Widget;

import '../../config/app_style/app_font.dart';
import '../../config/app_style/app_style.dart';

class InputField extends StatelessWidget {
  final Icon? prefixIcon;
  final String? hintText;
  final Icon? suffixIcon;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  const InputField(
      {Key? key,
      this.prefixIcon,
      this.hintText,
      this.keyboardType,
      this.suffixIcon,
      this.controller,
      this.textInputAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textInputAction: textInputAction ?? TextInputAction.next,
      keyboardType: keyboardType ?? TextInputType.text,
      style: getRegularStyle(color: Colors.black, fontSize: FontSize.s14),
      decoration: InputDecoration(
          hintText: hintText, prefixIcon: prefixIcon, suffixIcon: suffixIcon),
    );
  }
}
