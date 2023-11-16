import 'package:flutter_application/src/features/authentication/models/user_model.dart';
import 'package:flutter_application/src/repository/auth_repository/auth_repository.dart';
import 'package:flutter_application/src/repository/user_repository/user_repositiry.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();
  final _authRpo = Get.put(AuthRepository());
  final _userRepo = Get.put(UserRepositoyr());

  getUserData() {
    final phoneNumber = _authRpo.firebaseUser.value?.phoneNumber;
    if (phoneNumber != null) {
      return _userRepo.getUserDetails(phoneNumber);
    }
  }

  updateUserDetails(UserModel userModel) async {
    await _userRepo.updateUserDetail(userModel);
  }
}
