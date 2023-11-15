import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/src/features/authentication/models/user_model.dart';
import 'package:get/get.dart';

class UserRepositoyr extends GetxController {
  static UserRepositoyr get instance => Get.find();
  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) async {
    try {
      await _db.collection("Users").add(user.toJson()).whenComplete(() =>
          GetSnackBar(
              title: "Success",
              message: "Your account has been created",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green.withOpacity(0.1)));
    } catch (e) {
      GetSnackBar(
          title: "Error",
          message: "something whent wrong",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red.withOpacity(0.1));
    }
  }
}
