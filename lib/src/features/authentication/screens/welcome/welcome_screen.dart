import 'package:flutter/material.dart';
import 'package:flutter_application/src/constants/colors.dart';
import 'package:flutter_application/src/constants/image_strings.dart';
import 'package:flutter_application/src/constants/sizes.dart';
import 'package:flutter_application/src/constants/text_strings.dart';
import 'package:flutter_application/src/features/authentication/screens/signup/signup_screen.dart';
import '../login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var britness = mediaQuery.platformBrightness;
    final isDarkMode = britness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tWhiteColor,
      body: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                tWellcomeImage,
                height: height * 0.6,
              ),
              Column(
                children: [
                  Text(tWelcomeTitle,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 21.0, // Adjust the font size as needed
                          )),
                  Text(
                    tWelcomeSubTitle,
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          child: Text(tLogin.toUpperCase()))),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupScreen()),
                            );
                          },
                          child: Text(tSignup.toUpperCase())))
                ],
              )
            ],
          )),
    );
  }
}
