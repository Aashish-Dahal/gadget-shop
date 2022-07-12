import 'package:flutter/material.dart';
import 'package:jandj_customer/presentation/screen/auth_screen.dart';
import 'package:jandj_customer/presentation/screen/home_screen.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoutes(
      RouteSettings settings, bool isLoggedIn) {
    if (!isLoggedIn) {
      switch (settings.name) {
        case AuthScreen.routeName:
          return _materialPageRoute(const AuthScreen());

        default:
          return _materialPageRoute(const SizedBox());
      }
    }
    if (isLoggedIn) {
      switch (settings.name) {
        case HomeScreen.routeName:
          return _materialPageRoute(const HomeScreen());
        default:
          return _materialPageRoute(const SizedBox());
      }
    }
    switch (settings.name) {
      default:
        return _materialPageRoute(const SizedBox());
    }
  }

  static Route<dynamic> _materialPageRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
