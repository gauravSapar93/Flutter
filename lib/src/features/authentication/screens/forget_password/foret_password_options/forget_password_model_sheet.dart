import 'package:flutter/material.dart';
import 'package:flutter_application/src/constants/sizes.dart';
import 'package:flutter_application/src/constants/text_strings.dart';
import 'package:flutter_application/src/features/authentication/screens/forget_password/foret_password_options/forget_password_button.dart';
import 'package:flutter_application/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:flutter_application/src/features/authentication/screens/forget_password/forget_password_phone/forget_password_phone.dart';

class ForgetPasswordScreen {
  static Future<dynamic> showModelBottomSheetMethod(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        builder: (context) => Container(
              padding: EdgeInsets.all(tDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tForgetPasswordTitle,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Text(
                    tForgetPasswordSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ForgetPasswordWidget(
                    btnIcon: Icons.email_outlined,
                    title: tEmail,
                    Subtitle: tResetViaEmail,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgetPasswordMailScreen()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ForgetPasswordWidget(
                    btnIcon: Icons.mobile_friendly_rounded,
                    title: tPhone,
                    Subtitle: tResetViaPhone,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgetPasswordPhoneScreen()),
                      );
                    },
                  ),
                ],
              ),
            ));
  }
}
