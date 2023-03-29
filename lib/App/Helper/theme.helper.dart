import 'package:agence_task/App/Helper/colors.helper.dart';
import 'package:flutter/material.dart';

class ThemeHelper {
  static const loginStyle = TextStyle(color: Colors.grey);

  static const inputFieldTheme = InputDecoration(
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorHelper.secondaryColor)),
      enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(width: 0.5, color: ColorHelper.secondaryColor)));

  static const inputFieldTitleTheme = TextStyle(
      color: Colors.grey, fontFamily: 'Times New Roman', fontSize: 16);

  static const titleStyle = TextStyle(
      color: Colors.black, fontSize: 24, fontFamily: 'Times New Toman');
}
