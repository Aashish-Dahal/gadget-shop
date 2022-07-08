import 'package:flutter/material.dart';
import 'package:jandj_customer/config/app_theme/app_colors.dart';

class HeaderText extends StatelessWidget {
  final String title;
  const HeaderText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(color: AppColors.blueColor),
          ),
          Text(
            "See all",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: AppColors.primaryColor),
          )
        ],
      ),
    );
  }
}
