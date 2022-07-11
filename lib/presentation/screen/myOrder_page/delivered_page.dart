import 'package:flutter/material.dart'
    show StatelessWidget, Key, Widget, BuildContext, SizedBox, ListView;

import '../../widgets/order_card.dart';

class DeliveredPage extends StatelessWidget {
  const DeliveredPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return const OrderCard();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 2,
          );
        },
        itemCount: 3);
  }
}
