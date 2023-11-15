import 'package:flutter/material.dart';
import 'package:flutter_application/src/features/core/screens/dashboard/dashboard.dart';
import 'package:flutter_application/src/repository/auth_repository/auth_repository.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.put(OTPController());

  Future<void> verifyOTP(String smsCode, BuildContext context) async {
    var isVerified = await AuthRepository.instance.verifyotp(smsCode);
    isVerified
        ? Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Dashboard()),
          )
        : Navigator.pop(context);
  }
}
