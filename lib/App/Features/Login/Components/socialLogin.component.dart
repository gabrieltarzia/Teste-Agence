import 'package:agence_task/App/Features/Login/login.controller.dart';
import 'package:agence_task/Enums/loginTypes.enum.dart';
import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class SocialLoginComponent extends GetView<LoginController> {
  const SocialLoginComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(7.0),
    child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SocialLoginButton(
              text: StringsContants.loginWithGoogle.tr,
              buttonType: SocialLoginButtonType.google,
              mode: SocialLoginButtonMode.single,
              onPressed: () {
                controller.tryLogin(LoginTypes.google);
              },
            ),
            SocialLoginButton(
              text: StringsContants.loginWithFacebook.tr,
              buttonType: SocialLoginButtonType.facebook,
              mode: SocialLoginButtonMode.single,
              onPressed: () {
                controller.tryLogin(LoginTypes.facebook);
              },
            ),
          ],
        ),
  );
}
