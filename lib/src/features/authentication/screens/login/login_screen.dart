import 'package:flutter/material.dart';
import 'package:flutter_application/src/constants/image_strings.dart';
import 'package:flutter_application/src/constants/sizes.dart';
import 'package:flutter_application/src/constants/text_strings.dart';
import 'package:flutter_application/src/features/authentication/screens/login/login_header_widget.dart';

import 'login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeaderWidget(size: size),
                LoginFormWidget(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("OR"),
                    SizedBox(
                      height: tFormHeight - 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: Image.network(
                          tGoogleLogo,
                          width: 20.0,
                        ),
                        label: Text(tSignInWithGoogle),
                      ),
                    ),
                    SizedBox(
                      height: tFormHeight - 20,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text.rich(TextSpan(
                            text: tDontHaveAccount,
                            style: Theme.of(context).textTheme.bodySmall,
                            children: [
                              TextSpan(
                                  text: tSignup,
                                  style: TextStyle(color: Colors.blue)),
                            ])))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
