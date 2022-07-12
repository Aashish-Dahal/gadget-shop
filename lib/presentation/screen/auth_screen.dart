import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Colors,
        Column,
        CrossAxisAlignment,
        EdgeInsets,
        Expanded,
        Image,
        Key,
        NeverScrollableScrollPhysics,
        Padding,
        PreferredSize,
        SafeArea,
        Scaffold,
        Size,
        State,
        StatefulWidget,
        Tab,
        TabBar,
        TabBarIndicatorSize,
        TabBarView,
        TabController,
        Text,
        Theme,
        TickerProviderStateMixin,
        Widget;
import 'package:jandj_customer/config/app_style/app_font.dart';
import 'package:jandj_customer/config/app_theme/app_colors.dart';
import 'package:jandj_customer/config/strings/app_strings.dart';
import 'package:jandj_customer/presentation/screen/auth_page/sign_in.dart';
import 'package:jandj_customer/presentation/screen/auth_page/sign_up.dart';

class AuthScreen extends StatefulWidget {
  static const routeName = "/";
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with TickerProviderStateMixin {
  late final TabController _tabController;
  final String _signInMessage = "Welcome Back !";
  final String _signUpMessage = "Create Account";
  int _selectedValue = 0;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: Image.asset(AppStrings.appLogo))),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 25, bottom: 15),
              child: Text(
                (_selectedValue == 0) ? _signInMessage : _signUpMessage,
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    color: AppColors.blueColor, fontSize: FontSize.s20),
              ),
            ),
            TabBar(
              onTap: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: AppColors.blueColor,
              labelStyle: Theme.of(context).textTheme.headline2,
              unselectedLabelStyle: Theme.of(context).textTheme.bodyText2,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.transparent,
              controller: _tabController,
              tabs: const [
                Tab(
                  text: "Sign In",
                ),
                Tab(
                  text: "Sign Up",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _tabController,
                  children: const [SignIn(), SignUp()]),
            ),
          ],
        ),
      ),
    );
  }
}
