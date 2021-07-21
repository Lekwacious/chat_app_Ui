import 'package:chat_app_ui/components/primary_button.dart';
import 'package:chat_app_ui/constants.dart';
import 'package:flutter/material.dart';

class SignUpOrSigning extends StatelessWidget {
  const SignUpOrSigning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? "assets/images/Logo_light.png"
                  : "assets/images/Logo_dark.png",
              height: 146,
            ),
            Spacer(),
            PrimaryButton(text: "Sign In", press: () {}),
            SizedBox(
              height: kDefaultPadding * 1.5,
            ),
            PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Sign Up",
                press: () {}),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
