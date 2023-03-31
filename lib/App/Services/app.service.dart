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
      /// TODO:(message): Recuperar usuario do LocalStorage
    }
    super.onInit();
  }

  Future<bool> tryLogin(LoginTypes loginType) async {
    ///TODO:(message) : Salvar o usuario no LocalStorage

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
