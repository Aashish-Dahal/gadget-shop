import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Card,
        Container,
        IconButton,
        Icons,
        Key,
        NeverScrollableScrollPhysics,
        Padding,
        PageController,
        PageView,
        Positioned,
        Row,
        SafeArea,
        Scaffold,
        State,
        StatefulWidget,
        Widget;
import 'package:jandj_customer/presentation/screen/my_order.dart';
import 'package:jandj_customer/presentation/screen/profile.dart';

import '../widgets/app_bottom_bar.dart';
import 'home_page/home.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _tabController = PageController();

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return const Home();
            case 1:
              return const Home();
            case 2:
              return const MyOrder();
            case 3:
              return const ProfileScreen();
            default:
              throw const FormatException('Page not found');
          }
        },
      ),
      bottomNavigationBar: AppBottomNavBAr(tabController: _tabController),
    );
  }
}
