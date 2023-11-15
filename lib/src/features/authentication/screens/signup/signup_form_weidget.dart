import 'package:flutter/material.dart';
import 'package:flutter_application/src/constants/sizes.dart';
import 'package:flutter_application/src/constants/text_strings.dart';
import 'package:flutter_application/src/features/authentication/models/user_model.dart';
import 'package:get/get.dart';

import '../../controllers/signup_screen_controller.dart';

class SignUpFormWidget extends StatelessWidget {
  SignUpFormWidget({
    super.key,
  });

  static final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpScreenController());

    return Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight - 20),
      child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.fullName,
                decoration: InputDecoration(
                  label: Text(tFullName),
                  prefixIcon: Icon(Icons.person_outline_rounded),
                ),
              ),
              SizedBox(height: tFormHeight - 20),
              TextFormField(
                controller: controller.email,
                decoration: InputDecoration(
                  label: Text(tEmail),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: tFormHeight - 20),
              TextFormField(
                controller: controller.phoneNo,
                decoration: InputDecoration(
                  label: Text(tPhone),
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(height: tFormHeight - 20),
              TextFormField(
                controller: controller.password,
                decoration: InputDecoration(
                  label: Text(tPassword),
                  prefixIcon: Icon(Icons.fingerprint),
                ),
              ),
              SizedBox(height: tFormHeight - 10),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          //SignUpScreenController.instance.registerUser(
                          //   controller.email.text.trim(),
                          //  controller.password.text.trim(),
                          //  context);
                          // SignUpScreenController.instance
                          //   .phoneAuth(controller.phoneNo.text.trim());
                          // Navigator.push(
                          // context,
                          // MaterialPageRoute(
                          //   builder: (context) => OTPScreen()),
                          // );
                          final user = UserModel(
                              email: controller.email.text.trim(),
                              password: controller.password.text.trim(),
                              fullName: controller.fullName.text.trim(),
                              phoneNo: controller.phoneNo.text.trim());

                          SignUpScreenController.instance
                              .createUser(user, context);
                        }
                      },
                      child: Text(tSignup.toUpperCase())))
            ],
          )),
    );
  }
}
