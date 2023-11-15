import 'package:flutter/material.dart';
import 'package:flutter_application/src/features/authentication/models/user_model.dart';
import 'package:flutter_application/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:flutter_application/src/repository/auth_repository/auth_repository.dart';
import 'package:flutter_application/src/repository/user_repository/user_repositiry.dart';
import 'package:get/get.dart';

class SignUpScreenController extends GetxController {
  static SignUpScreenController get instance => Get.find();
  final userRepo = Get.put(UserRepositoyr());
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();
  void registerUser(String email, String password, BuildContext context) {
    AuthRepository.instance
        .createUserWithEmailAndPassword(email, password, context);
  }

  void phoneAuth(String phone) {
    AuthRepository.instance.phoneAuth(phone);
  }

  Future<void> createUser(UserModel user, BuildContext context) async {
    await userRepo.createUser(user);
    phoneAuth(user.phoneNo);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OTPScreen()),
    );
  }
}
