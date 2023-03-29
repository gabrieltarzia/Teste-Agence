import 'package:agence_task/App/Controller/login.controller.dart';
import 'package:agence_task/App/Controller/user.controller.dart';
import 'package:agence_task/App/Helper/colors.helper.dart';
import 'package:agence_task/App/Helper/theme.helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  @override
  final controller = Get.put(LoginController());
  final userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      backgroundColor: ColorHelper.primaryColor,
    );
  }

  _body() => ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(12),
              child: Center(
                child: Column(
                  children: [
                    Image.asset('lib/Assets/Images/agence_logo.png'),
                    const SizedBox(
                      height: 122,
                    ),
                    const Text(
                      'Entre com sua conta',
                      style: ThemeHelper.inputFieldTitleTheme,
                    ),
                    const Divider(),
                    _emailField(),
                    const SizedBox(
                      height: 12,
                    ),
                    Obx(() {
                      return _passWordField();
                    }),
                    const SizedBox(
                      height: 28,
                    ),
                    _forgotPassWord(),
                    _loginButton(),
                    const SizedBox(
                      height: 28,
                    ),
                    const Text(
                      'Ou',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontFamily: 'Times New Roman'),
                    ),
                    _socialLogin(),
                  ],
                ),
              )),
        ],
      );

  _emailField() => TextField(
        controller: controller.emailController,
        style: ThemeHelper.inputFieldTitleTheme,
        decoration: ThemeHelper.inputFieldTheme,
      );

  _passWordField() => TextField(
      obscureText: controller.obscurePassWord.value,
      style: ThemeHelper.inputFieldTitleTheme,
      decoration: InputDecoration(
          suffixIcon: _obscurePassword(controller.obscurePassWord.value),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: ColorHelper.secondaryColor)),
          enabledBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(width: 0.5, color: ColorHelper.secondaryColor))));

  _loginButton() => ElevatedButton(
        onPressed: () {},
        child: const Text('Login'),
      );

  _forgotPassWord() => ElevatedButton(
      onPressed: () {}, child: const Text('Esqueci minha senha'));

  _socialLogin() => Column(
        children: [
          const Divider(),
          SocialLoginButton(
            text: 'Entre com Google',
            buttonType: SocialLoginButtonType.google,
            onPressed: () {
              userController.googleLogin();
            },
          ),
          const Divider(),
          SocialLoginButton(
            text: 'Entre com Facebook',
            buttonType: SocialLoginButtonType.facebook,
            onPressed: () {},
          )
        ],
      );

  _obscurePassword(bool value) => IconButton(
      onPressed: () {
        controller.obscurePassWord.value = !controller.obscurePassWord.value;
      },
      icon: controller.obscurePassWord.value
          ? const Icon(Icons.visibility_off, color: ColorHelper.secondaryColor)
          : const Icon(Icons.visibility, color: ColorHelper.secondaryColor));
}
