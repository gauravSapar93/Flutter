import 'package:flutter/material.dart';
import 'package:flutter_application/src/features/core/screens/dashboard/dashboard.dart';
import 'package:flutter_application/src/repository/auth_repository/auth_repository.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  static LoginScreenController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final isGoogleLoading = false.obs;
  final isLoading = false.obs;

  void loginUser(String email, String password, BuildContext context) {
    AuthRepository.instance
        .loginUserWithEmailAndPassword(email, password, context);
  }

  void logoOut(BuildContext context) {
    AuthRepository.instance.logout(context);
  }

  Future<void> googleSignIn(BuildContext context) async {
    try {
      isGoogleLoading.value = true;
      await AuthRepository.instance.signInWithGoogle();
      isGoogleLoading.value = false;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Dashboard()),
      );
    } catch (e) {
      isGoogleLoading.value = false;
      print(e);
    }
  }
}
