import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

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
                          style: ThemeConstants.inputFieldTitleStyle,
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
                      const ForgetPassWordComponent(),
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
