import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginButtonComponent extends StatelessWidget {
  const LoginButtonComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SocialLoginButton(
      text: StringsContants.login.tr,
      buttonType: SocialLoginButtonType.generalLogin,
      onPressed: () {});
}
