import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        EdgeInsets,
        Icon,
        Icons,
        Key,
        Navigator,
        Padding,
        Scaffold,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        Theme,
        Widget;
import 'package:jandj_customer/config/app_theme/app_colors.dart';
import 'package:jandj_customer/presentation/widgets/checkbox_tile.dart';
import 'package:jandj_customer/presentation/widgets/input_field.dart';
import 'package:provider/provider.dart' show ReadContext;

import '../../../business/provider/auth_provider.dart';
import '../../widgets/button.dart';
import '../home_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          children: [
            const InputField(
              hintText: "Username or email",
            ),
            const SizedBox(
              height: 10,
            ),
            const InputField(
              hintText: "Password",
              suffixIcon: Icon(Icons.visibility_off),
            ),
            const SizedBox(
              height: 5,
            ),
            CheckBoxTile(
              onChanged: (selectedValue) {
                print(selectedValue);
              },
              secondary: Button(
                  type: ButtonType.transparent,
                  size: ButtonSize.small,
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: AppColors.primaryColor),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Button(
              onPressed: () {
                context.read<AuthProvider>().loggedIn = true;
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
              child: const Text("Sign In"),
            )
          ],
        ),
      ),
    );
  }
}
