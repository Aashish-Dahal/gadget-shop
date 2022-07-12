import 'package:flutter/material.dart'
    show
        BuildContext,
        CheckboxListTile,
        EdgeInsets,
        Key,
        ListTileControlAffinity,
        MainAxisAlignment,
        Offset,
        Row,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        Transform,
        Widget;

typedef CheckBoxCallback = void Function(bool selectedValue);

class CheckBoxTile extends StatefulWidget {
  final String? title;
  final double? titleWidth;
  final Widget? secondary;
  final CheckBoxCallback? onChanged;
  const CheckBoxTile(
      {Key? key, this.title, this.secondary, this.onChanged, this.titleWidth})
      : super(key: key);

  @override
  State<CheckBoxTile> createState() => _CheckBoxTileState();
}

class _CheckBoxTileState extends State<CheckBoxTile> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: widget.titleWidth ?? 190,
          child: CheckboxListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              controlAffinity: ListTileControlAffinity.leading,
              value: _isSelected,
              title: Transform.translate(
                  offset: const Offset(-18, 0),
                  child: Text(widget.title ?? 'Remember me')),
              onChanged: (value) {
                setState(() {
                  _isSelected = value!;
                  widget.onChanged!(_isSelected);
                });
              }),
        ),
        widget.secondary ?? const SizedBox()
      ],
    );
  }
}
