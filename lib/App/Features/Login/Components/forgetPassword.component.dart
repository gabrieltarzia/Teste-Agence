import 'package:agence_task/lib.dart';
import 'package:cupertino_text_button/cupertino_text_button.dart';
import 'package:flutter/material.dart';

class ForgetPassWordComponent extends GetView<LoginController> {
  const ForgetPassWordComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: CupertinoTextButton(
          onTap: () {
            controller.resetPassword();
          },
          text: StringsConstants.forgetPassWord.tr,
          style: ThemeConstants.titleTextStyle,
          color: Colors.white,
        ),
      );
}
