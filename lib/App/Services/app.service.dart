import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class AppService extends GetxService {
  AppService(this.userServices);

  final UserService userServices;

  void changeLanguage(Locale locale) {
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    if (userServices.currentUser.name != '') {
      /// TODO:(message): Get user from LocalStorage
    }
    super.onInit();
  }

  Future<bool> tryLogin(LoginTypes loginType) async {
    ///TODO:(message) : Save user to LocalStorage

    late bool result;
    switch (loginType) {
      case LoginTypes.google:
        result = await userServices.googleLogin();

        break;
      case LoginTypes.facebook:
        result = await userServices.facebookLogIn();

        break;
      default:
    }

    return result;
  }

  void logout() {
    userServices.logout();
  }
}
