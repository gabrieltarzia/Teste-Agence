import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  LoginController(this.appService);
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  final obscurePassWord = true.obs;

  final loading = false.obs;

  final AppService appService;

  Future<void> tryLogin(LoginTypes loginType) async {
    loading(true);
    final result = await appService.tryLogin(loginType);
    appService.userServices.getUserLocation();
    loading(false);
    result ? _goToHome() : _showError();
  }

  void _showError() {
    GetSnackBar _snackBar = GetSnackBar(
      duration: const Duration(seconds: 3),
      icon: const Icon(
        Icons.error,
        color: Colors.red,
      ),
      title: StringsContants.error.tr,
      message: StringsContants.errorMessage.tr,
    );
    Get.showSnackbar(_snackBar);
  }

  void _goToHome() => Get.toNamed(AppPages.home);
}
