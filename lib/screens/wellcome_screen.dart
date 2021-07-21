import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/screens/onboarding/signin_or_signup.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset("assets/images/welcome_image.png"),
            Spacer(
              flex: 3,
            ),
            Text(
              "Welcome to our KwikTalk\n messaging app",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              "Freedom talk to any person of your \nmother language",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .color!
                      .withOpacity(0.64)),
            ),
            Spacer(
              flex: 3,
            ),
            FittedBox(
              child: TextButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpOrSigning())),
                child: Row(
                  children: [
                    Text(
                      "Skip",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .color!
                              .withOpacity(0.8)),
                    ),
                    SizedBox(
                      width: kDefaultPadding / 4,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.8),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
