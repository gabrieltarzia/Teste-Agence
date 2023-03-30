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

  Future<void> tryLogin(LoginTypes loginType) async {
    loading(true);
    late bool result;
    switch (loginType) {
      case LoginTypes.google:
        result = await appController.userServices.googleLogin();

        break;
      case LoginTypes.facebook:
        result = await appController.userServices.facebookLogIn();

        break;
      default:
    }
    result ? _goToHome() : _showError();
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
