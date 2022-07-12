import 'package:flutter/material.dart'
    show
        AppBar,
        Border,
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Colors,
        Container,
        EdgeInsets,
        ElevatedButton,
        Icon,
        Icons,
        Key,
        PreferredSizeWidget,
        Radius,
        Size,
        StatelessWidget,
        Text,
        Widget;

import '../../config/app_theme/app_colors.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final double? toolbarHeight;
  final Widget? leading;
  const CustomAppBar({Key? key, this.title, this.toolbarHeight, this.leading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      toolbarHeight: toolbarHeight ?? 70,
      elevation: 0,
      titleSpacing: 0,
      leading: leading ??
          Container(
            padding: const EdgeInsets.only(left: 5),
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
              size: 18,
            ),
          ),

      // leading: Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //       primary: Colors.white,
      //     ),
      //     child: const Icon(
      //       Icons.arrow_back_ios,
      //       color: Colors.black,
      //     ),
      //     onPressed: () {},
      //   ),
      // ),
      title: Text(title ?? ''),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
