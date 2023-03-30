import 'package:agence_task/App/Constants/colors.constants.dart';
import 'package:flutter/material.dart';

class ThemeConstants {
  static const loginStyle = TextStyle(color: Colors.grey);

  static const inputFieldTheme = InputDecoration(
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorConstants.secondaryColor)),
      enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(width: 0.5, color: ColorConstants.secondaryColor)));

  static const inputFieldTitleTheme = TextStyle(
      color: Colors.grey, fontFamily: 'Times New Roman', fontSize: 16);

  static const hintTextTheme = TextStyle(
      color: Colors.grey, fontFamily: 'Times New Roman', fontSize: 12);

  static const titleStyle = TextStyle(
      color: Colors.grey, fontSize: 16, fontFamily: 'Times New Toman');
}
