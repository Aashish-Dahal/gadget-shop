import 'package:flutter/material.dart';
import 'package:jandj_customer/config/app_theme/app_colors.dart';
import 'package:jandj_customer/config/strings/app_strings.dart';
import 'package:jandj_customer/core/utils/constants.dart';
import 'package:jandj_customer/presentation/widgets/counter_button.dart';
import 'package:jandj_customer/presentation/widgets/custom_appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Cart",
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: 120,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8)),
                          border: Border.all(
                              color: AppColors.borderColor, width: 2)),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8)),
                        child: Image.asset(
                          AppStrings.pp,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                          border: Border.all(
                              color: AppColors.borderColor, width: 2)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hoddi for mans",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: AppColors.blueColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(Constants.formatter.format(1000),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: AppColors.primaryColor)),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              CounterButton(
                                onPressed: () {},
                                icon: Icons.add,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text("1",
                                  style: Theme.of(context).textTheme.bodyText1),
                              const SizedBox(
                                width: 8,
                              ),
                              CounterButton(
                                onPressed: () {},
                                icon: Icons.remove,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 8,
            );
          },
          itemCount: 3),
    );
  }
}
