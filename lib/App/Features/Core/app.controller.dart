import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class AppController extends GetxController {
  AppController(this.userServices);

  final UserServices userServices;

  void changeLanguage(Locale locale) {
    Get.updateLocale(locale);
  }

  void logout() {}
}
