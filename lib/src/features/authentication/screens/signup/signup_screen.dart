import 'package:flutter/material.dart';
import 'package:flutter_application/src/common_widgets/from_header_widget.dart';
import 'package:flutter_application/src/constants/image_strings.dart';
import 'package:flutter_application/src/constants/sizes.dart';
import 'package:flutter_application/src/constants/text_strings.dart';

import 'signup_form_weidget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                FromHeaderWidget(
                    size: MediaQuery.of(context).size,
                    image: tWellcomeImage,
                    title: tSignUoTitle,
                    subTitle: tSignUpSubTitle,
                    heightBetween: 10.0,
                    crossAxisAlignment: CrossAxisAlignment.start),
                SignUpFormWidget(),
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
                            text: tAlreadyHaveAccount,
                            style: Theme.of(context).textTheme.bodySmall,
                            children: [
                              TextSpan(
                                  text: tLogin,
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
