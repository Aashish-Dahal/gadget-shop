import 'package:flutter/cupertino.dart';
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

import '../../config/app_theme/app_colors.dart';
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(136),
        child: Stack(
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      children: const [
                        Icon(Icons.search),
                        Text("Search your products")
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
      body: SafeArea(
        child: PageView.builder(
          controller: _tabController,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return const Home();
              case 1:
                return const Home();
              case 2:
                return const Home();
              case 3:
                return const Home();
              default:
                throw const FormatException('Page not found');
            }
          },
        ),
      ),
      bottomNavigationBar: AppBottomNavBAr(tabController: _tabController),
    );
  }
}
