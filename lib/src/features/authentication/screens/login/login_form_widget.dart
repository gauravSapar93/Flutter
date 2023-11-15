import 'package:flutter/material.dart';
import 'package:flutter_application/src/constants/sizes.dart';
import 'package:flutter_application/src/constants/text_strings.dart';
import 'package:flutter_application/src/features/authentication/controllers/login_screen_controller.dart';
import 'package:flutter_application/src/features/authentication/screens/forget_password/foret_password_options/forget_password_model_sheet.dart';
import 'package:get/get.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
  });
  static final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginScreenController());
    return Form(
        key: _formKey,
        child: Container(
          padding:
              EdgeInsetsDirectional.symmetric(vertical: tFormHeight - 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.email,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_outline),
                    labelText: tEmail,
                    hintText: tEmail,
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: tFormHeight - 20,
              ),
              TextFormField(
                controller: controller.password,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                    labelText: tPassword,
                    hintText: tPassword,
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: tFormHeight - 20,
              ),
              Align(
                child: TextButton(
                    onPressed: () {
                      ForgetPasswordScreen.showModelBottomSheetMethod(context);
                    },
                    child: Text(tForgetPassword)),
                alignment: Alignment.centerRight,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          LoginScreenController.instance.loginUser(
                              controller.email.text.trim(),
                              controller.password.text.trim(),
                              context);
                        }
                      },
                      child: Text(tLogin.toUpperCase()))),
            ],
          ),
        ));
  }
}
