import 'package:flutter/material.dart';
import 'package:flutter_application/src/repository/auth_repository/auth_repository.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  static LoginScreenController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();

  void loginUser(String email, String password, BuildContext context) {
    AuthRepository.instance
        .loginUserWithEmailAndPassword(email, password, context);
  }

  void logoOut(BuildContext context) {
    AuthRepository.instance.logout(context);
  }
}
