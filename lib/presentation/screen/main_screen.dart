import 'package:flutter/material.dart'
    show BuildContext, Key, MaterialApp, StatelessWidget, Widget;
import 'package:jandj_customer/config/app_theme/app_theme.dart';
import 'package:jandj_customer/presentation/screen/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'J&J Suppliers',
      theme: AppTheme.light,
      home: const HomeScreen(),
    );
  }
}
