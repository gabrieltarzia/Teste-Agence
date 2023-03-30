import 'package:agence_task/App/App.dart';
import 'package:agence_task/App/Features/Core/app.controller.dart';
import 'package:agence_task/Enums/loginTypes.enum.dart';
import 'package:agence_task/Routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  LoginController(this.appController);
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  final obscurePassWord = true.obs;

  final loading = false.obs;
  final AppController appController;

  /*Future<User?> tryLogin(LoginTypes loginType) async {
    loading(true);
    late User result;
    switch (loginType) {
      case LoginTypes.google:
        await appController.userServices.googleLogin();

        result = appController.userServices.currentUser;

        break;
      case LoginTypes.facebook:
        result = await appController.userServices.facebookLogIn();
        result = appController.userServices.currentUser;
        break;
      default:
    }
    result != null ? _goToHome() : _showError();
    loading(false);
  }*/

  Future<User?> tryLogin(LoginTypes loginType) async {
    loading(true);
    late User result;
    switch (loginType) {
      case LoginTypes.google:

        await appController.userServices.googleLogin();

        result = appController.userServices.currentUser;

        break;
      case LoginTypes.facebook:

        await appController.userServices.facebookLogIn();

        result = appController.userServices.currentUser;

        break;
      default:
    }
    result.name != null ? _goToHome() : _showError();
    loading(false);
  }

  void _showError() {
    GetSnackBar _snackBar = const GetSnackBar(
      title: 'Erro',
      message: 'Houve Um Erro',
    );
    Get.showSnackbar(_snackBar);
  }

  void _goToHome() => Get.toNamed(AppPages.home);
}
