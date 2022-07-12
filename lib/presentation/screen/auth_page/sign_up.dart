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
        Widget;
import 'package:jandj_customer/presentation/screen/home_screen.dart';
import 'package:jandj_customer/presentation/widgets/checkbox_tile.dart';
import 'package:jandj_customer/presentation/widgets/input_field.dart';
import 'package:provider/provider.dart' show ReadContext;

import '../../../business/provider/auth_provider.dart';
import '../../widgets/button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          children: [
            const InputField(
              hintText: "Your Name",
            ),
            const SizedBox(
              height: 10,
            ),
            const InputField(
              hintText: "Email Address",
            ),
            const SizedBox(
              height: 10,
            ),
            const InputField(
              hintText: "Password",
              suffixIcon: Icon(Icons.visibility_off),
            ),
            const SizedBox(
              height: 10,
            ),
            const InputField(
              hintText: "Confirm Password",
              suffixIcon: Icon(Icons.visibility_off),
            ),
            const SizedBox(
              height: 5,
            ),
            CheckBoxTile(
              titleWidth: 280,
              title: "I agree to the terms & conditions",
              onChanged: (selectedValue) {
                print(selectedValue);
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Button(
              onPressed: () {
                context.read<AuthProvider>().loggedIn = true;
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
              child: const Text("Sign Up"),
            )
          ],
        ),
      ),
    );
  }
}
