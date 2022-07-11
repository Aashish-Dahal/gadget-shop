import 'package:flutter/material.dart';
import 'package:jandj_customer/config/app_theme/app_colors.dart';
import 'package:jandj_customer/presentation/screen/myOrder_page/delivered_page.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> with TickerProviderStateMixin {
  late TabController _tabController;
  int delivered = 9;
  int cancelled = 0;
  int processing = 0;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "My Order",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue.shade100)),
              child: TabBar(
                indicator: const BoxDecoration(color: AppColors.primaryColor),
                labelColor: Colors.white,
                labelStyle: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 13),
                unselectedLabelStyle: Theme.of(context).textTheme.bodyText2,
                unselectedLabelColor: Colors.black,
                controller: _tabController,
                tabs: [
                  Tab(
                    text: "Delivered($delivered)",
                  ),
                  Tab(
                    text: "Processing($processing)",
                  ),
                  Tab(
                    text: "Cancelled($cancelled)",
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(controller: _tabController, children: const [
          DeliveredPage(),
          Center(child: Text('Processing')),
          Center(child: Text('Cancelled')),
        ]));
  }
}
