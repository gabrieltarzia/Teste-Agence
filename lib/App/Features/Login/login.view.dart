import 'package:agence_task/App/Constants/path.constants.dart';
import 'package:agence_task/App/Constants/strings.constants.dart';
import 'package:agence_task/App/Features/Login/Components/forgetPassword.component.dart';
import 'package:agence_task/App/Features/Login/Components/loginButton.component.dart';
import 'package:agence_task/App/Features/Login/login.controller.dart';
import 'package:agence_task/App/Constants/colors.constants.dart';
import 'package:agence_task/App/Constants/theme.constants.dart';
import 'package:agence_task/App/Features/Core/Components/loading.component.dart';
import 'package:agence_task/App/Features/Login/Components/socialLogin.component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Components/passwordField.component.dart';
import 'Components/userNameFiel.component.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      backgroundColor: ColorConstants.primaryColor,
    );
  }

  _body() => Obx(
        () => controller.loading.isTrue
            ? const LoadingComponent()
            : Padding(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Image.asset(PathConstants.logoPath),
                      const SizedBox(
                        height: 122,
                      ),
                      Center(
                        child: Text(
                          StringsContants.loginWithYourAccount.tr,
                          style: ThemeConstants.inputFieldTitleTheme,
                        ),
                      ),
                      const Divider(),
                      UserNameFieldComponent(
                        usernameController: controller.emailController,
                        passWordController: controller.passWordController,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      PassWordFieldComponent(
                        obscureText: controller.obscurePassWord(),
                      ),
                      const Divider(),
                      ForgetPassWordComponent(),
                      const Divider(),
                      const LoginButtonComponent(),
                      const SizedBox(
                        height: 28,
                      ),
                      const SocialLoginComponent(),
                    ],
                  ),
                )),
      );
}
