import 'package:flutter/material.dart' show EdgeInsets;
import 'package:intl/intl.dart' show NumberFormat;

extension Merge on EdgeInsets {
  EdgeInsets merge(EdgeInsets? other) {
    return copyWith(
      left: other?.left != 0 ? other?.left : left,
      right: other?.right != 0 ? other?.right : right,
      top: other?.top != 0 ? other?.top : top,
      bottom: other?.bottom != 0 ? other?.bottom : bottom,
    );
  }
}

class Constants {
  static NumberFormat formatter = NumberFormat.currency(
      name: "Rs.", customPattern: "\u00A4\u00A0#,##,##0.00");
}
