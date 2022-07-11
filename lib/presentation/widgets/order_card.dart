import 'package:flutter/material.dart';
import 'package:jandj_customer/config/app_theme/app_colors.dart';

import '../../config/strings/app_strings.dart';
import '../../core/utils/constants.dart';
import 'large_text.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.cardColor, borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(left: 10, right: 10, top: 15),
      padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                height: 70,
                width: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    AppStrings.pp,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const LargeText(
                          text1: "Quantity:",
                          text2: "3",
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        Text("09-04-2022",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: Colors.grey))
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    LargeText(
                      color: AppColors.primaryColor,
                      text1: "Total amount",
                      text2: Constants.formatter.format(1000),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const LargeText(
            text1: "Order No:",
            text2: "1947034",
          ),
          const SizedBox(
            height: 5,
          ),
          const LargeText(
            underline: true,
            text1: "Tracking number:",
            text2: "IW3475689234",
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        side: const BorderSide(color: AppColors.primaryColor)),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Details",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    )),
                Text(
                  "Delivered",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
