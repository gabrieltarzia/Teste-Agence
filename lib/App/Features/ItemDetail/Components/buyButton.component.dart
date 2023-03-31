import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class BuyButtonComponent extends StatelessWidget {
  const BuyButtonComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(12.0),
        child: SocialLoginButton(
          buttonType: SocialLoginButtonType.generalLogin,
          text: StringsContants.buy.tr,
          backgroundColor: Colors.orange,
          onPressed: () {
            Get.bottomSheet(const BuyConfirmComponent());
          },
        ),
      );
}
