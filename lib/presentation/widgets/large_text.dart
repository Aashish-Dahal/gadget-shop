import 'package:flutter/material.dart'
    show
        StatelessWidget,
        Key,
        Widget,
        BuildContext,
        RichText,
        TextSpan,
        EdgeInsets,
        Theme,
        Color,
        WidgetSpan,
        Padding,
        TextDecoration,
        Colors;

class LargeText extends StatelessWidget {
  final String? text1;
  final String? text2;
  final Color? color;
  final bool? underline;

  const LargeText({
    this.text1,
    this.text2,
    this.underline = false,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: text1,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: Colors.grey,
              decoration: (underline!)
                  ? TextDecoration.underline
                  : TextDecoration.none)),
      const WidgetSpan(
        child: Padding(
          padding: EdgeInsets.only(left: 5.0),
        ),
      ),
      TextSpan(
          text: text2,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: color ?? Colors.black,
              ))
    ]));
  }
}
