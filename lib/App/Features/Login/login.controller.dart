import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  LoginController(this.appService);
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  final obscurePassWord = true.obs;

  final loading = false.obs;

  final AppService appService;

  @override
  void onInit() {
    appService.userServices.getUserLocation();
    super.onInit();
  }

  Future<void> tryLogin(LoginTypes loginType) async {
    loading(true);

    final result = await appService.tryLogin(loginType);

    loading(false);
    result ? _goToHome() : _showError();
  }

  void tryUsernameLogin() {
    emailController.text.isEmpty
        ? _insertEmailMessage()
        : {
            appService.userServices.currentUser = User(
                name: emailController.text,
                imageUrl: PathConstants.blankUserPath),
            _goToHome()
          };
  }

  void resetPassword() => emailController.text.isEmpty
      ? _insertEmailMessage()
      : _resetEmailMessage();

  void _resetEmailMessage() {
    GetSnackBar _snackBar = GetSnackBar(
      duration: const Duration(seconds: 3),
      icon: const Icon(
        Icons.email,
        color: Colors.green,
      ),
      message: StringsConstants.resetPasswordEmail.tr,
    );
    Get.showSnackbar(_snackBar);
  }

  void _insertEmailMessage() {
    GetSnackBar _snackBar = GetSnackBar(
      duration: const Duration(seconds: 3),
      icon: const Icon(
        Icons.error,
        color: Colors.red,
      ),
      title: StringsConstants.error.tr,
      message: StringsConstants.resetPasswordEmail.tr,
    );
    Get.showSnackbar(_snackBar);
  }

  void _showError() {
    GetSnackBar _snackBar = GetSnackBar(
      duration: const Duration(seconds: 3),
      icon: const Icon(
        Icons.error,
        color: Colors.red,
      ),
      title: StringsConstants.error.tr,
      message: StringsConstants.errorMessage.tr,
    );
    Get.showSnackbar(_snackBar);
  }

  void _goToHome() => Get.toNamed(AppPages.home);
}
