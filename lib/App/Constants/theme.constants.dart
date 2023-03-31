import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class ThemeConstants {
  static const loginTextStyle = TextStyle(color: Colors.grey);

  static const inputFieldDecoration = InputDecoration(
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorConstants.secondaryColor)),
      enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(width: 0.5, color: ColorConstants.secondaryColor)));

  static const inputFieldTitleStyle = TextStyle(
      color: Colors.grey, fontFamily: 'Times New Roman', fontSize: 16);

  static const hintTextStyle = TextStyle(
      color: Colors.grey, fontFamily: 'Times New Roman', fontSize: 12);

  static const titleTextStyle = TextStyle(
      color: Colors.grey, fontSize: 16, fontFamily: 'Times New Toman');

      static const nameTextStyle = TextStyle(
      color: Colors.black, fontSize: 24, fontFamily: 'Times New Toman');
}
