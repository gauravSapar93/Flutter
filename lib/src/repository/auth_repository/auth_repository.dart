import 'package:flutter/material.dart';
import 'package:flutter_application/src/features/authentication/screens/on_boarding/onBoardingScreen.dart';
import 'package:flutter_application/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:flutter_application/src/features/core/screens/dashboard/dashboard.dart';
import 'package:flutter_application/src/repository/auth_repository/exception/sign_up_email_passowrd_exception.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find();
  // variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verficationId = ''.obs;
  @override
  void onReady() {
    print('onReady');
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, (callback) => _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Navigator.push(
            Get.context!,
            MaterialPageRoute(builder: (context) => WelcomeScreen()),
          )
        : Navigator.push(
            Get.context!,
            MaterialPageRoute(builder: (context) => Dashboard()),
          );
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            )
          : Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WelcomeScreen()),
            );
    } on FirebaseAuthException catch (e) {
      final ex = SingupWithEmailPasswordException.code(e.code);
      print('Firebase exception ${ex.message}');
      throw ex;
    } catch (_) {
      final ex = SingupWithEmailPasswordException();
      print('exception ${ex.message}');
      throw ex;
    }
  }

  Future<void> loginUserWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Dashboard()));
    } on FirebaseAuthException {
    } catch (e) {
      print("Error: $e");
    }
  }

  Future<void> logout(BuildContext context) async {
    await _auth.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnBoardingScreen()));
  }

  Future<void> phoneAuth(String phone) async {
    await _auth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (credential) async {
          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (e) {
          Get.snackbar("Error", e.code);
        },
        codeSent: (verficationId, resendToken) {
          this.verficationId.value = verficationId;
        },
        codeAutoRetrievalTimeout: (verficationId) {
          this.verficationId.value = verficationId;
        });
  }

  Future<bool> verifyotp(String smsCode) async {
    var credential = await _auth.signInWithCredential(
        PhoneAuthProvider.credential(
            verificationId: this.verficationId.value, smsCode: smsCode));
    return credential.user != null ? true : false;
  }
}
