import 'package:flutter/material.dart'
    show
        BottomNavigationBar,
        BottomNavigationBarItem,
        Brightness,
        BuildContext,
        Colors,
        EdgeInsets,
        Icon,
        Icons,
        Key,
        Padding,
        PageController,
        State,
        StatefulWidget,
        TextStyle,
        Theme,
        ThemeData,
        Widget;
import 'package:jandj_customer/config/app_theme/app_colors.dart';

class AppBottomNavBAr extends StatefulWidget {
  const AppBottomNavBAr({
    Key? key,
    required PageController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final PageController _tabController;

  @override
  State<AppBottomNavBAr> createState() => _AppBottomNavBArState();
}

class _AppBottomNavBArState extends State<AppBottomNavBAr> {
  int currentIndex = 0;

  @override
  initState() {
    widget._tabController.addListener(() {
      setState(() {
        currentIndex = (widget._tabController.page ?? 0).toInt();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        brightness: Brightness.dark,
        bottomNavigationBarTheme: Theme.of(context).bottomNavigationBarTheme,
      ),
      child: BottomNavigationBar(
        showSelectedLabels: true,
        selectedLabelStyle: const TextStyle(color: AppColors.primaryColor),
        currentIndex: currentIndex,
        onTap: (index) {
          widget._tabController.jumpToPage(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.home_outlined),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                Icons.home_filled,
                color: AppColors.primaryColor,
              ),
            ),
            label: "Home",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.favorite_border),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                Icons.favorite,
                color: AppColors.primaryColor,
              ),
            ),
            label: "Wishlist",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.assignment_turned_in_outlined),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                Icons.assignment_turned_in,
                color: AppColors.primaryColor,
              ),
            ),
            label: "Order",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.account_circle_outlined),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                Icons.account_circle_rounded,
                color: AppColors.primaryColor,
              ),
            ),
            label: "Profile",
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
