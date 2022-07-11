import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        AppBar,
        BorderRadius,
        BuildContext,
        Card,
        ClipRRect,
        IconButton,
        Icons,
        Key,
        PreferredSize,
        Radius,
        Size,
        SizedBox,
        Stack,
        StatelessWidget,
        Text,
        Widget;

import '../../config/app_theme/app_colors.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 131,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
            child: AppBar(
              backgroundColor: AppColors.primaryColor,
              title: const Text("T Commerce"),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                ),
              ],
            ),
          ),
        ),
        Container(),
        Positioned(
            top: 100,
            left: 20,
            right: 20,
            child: Card(
              elevation: 8,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: const [
                    Icon(Icons.search),
                    Text("Search your products")
                  ],
                ),
              ),
            )),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(136);
}
