import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class UserNameFieldComponent extends StatelessWidget {
  const UserNameFieldComponent(
      {Key? key,
      required this.usernameController,
      required this.passWordController})
      : super(key: key);
  final TextEditingController usernameController;
  final TextEditingController passWordController;
  @override
  Widget build(BuildContext context) => TextField(
        controller: usernameController,
        style: ThemeConstants.inputFieldTitleStyle,
        decoration: InputDecoration(
          hintText: StringsContants.userName.tr,
          hintStyle: ThemeConstants.hintTextStyle,
          enabledBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(width: 0.5, color: ColorConstants.secondaryColor),
          ),
        ),
      );
}
