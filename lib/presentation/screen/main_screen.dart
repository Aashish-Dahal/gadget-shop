import 'package:flutter/material.dart'
    show BuildContext, Key, MaterialApp, StatelessWidget, Widget;
import 'package:jandj_customer/business/provider/auth_provider.dart';
import 'package:provider/provider.dart'
    show ChangeNotifierProvider, MultiProvider, ReadContext;
import 'package:jandj_customer/config/app_theme/app_theme.dart';
import 'package:jandj_customer/presentation/screen/auth_screen.dart';

import '../../config/app_route/app_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => AuthProvider(),
          )
        ],
        builder: (context, child) {
          return MaterialApp(
            title: 'J&J Suppliers',
            theme: AppTheme.light,
            onGenerateRoute: (settings) {
              return AppRouter.onGenerateRoutes(
                  settings, context.read<AuthProvider>().loggedIn);
            },
            initialRoute: AuthScreen.routeName,
          );
        });
  }
}
