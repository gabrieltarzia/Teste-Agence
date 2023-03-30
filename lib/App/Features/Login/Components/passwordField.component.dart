import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class PassWordFieldComponent extends StatefulWidget {
  PassWordFieldComponent({Key? key, required this.obscureText})
      : super(key: key);
  bool obscureText;

  @override
  State<PassWordFieldComponent> createState() => _PassWordFieldComponentState();
}

class _PassWordFieldComponentState extends State<PassWordFieldComponent> {
  @override
  Widget build(BuildContext context) => TextField(
        obscureText: widget.obscureText,
        style: ThemeConstants.inputFieldTitleTheme,
        decoration: InputDecoration(
          hintText: StringsContants.passWord,
          hintStyle: ThemeConstants.hintTextTheme,
          suffixIcon: _obscurePassword(widget.obscureText),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.secondaryColor),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(width: 0.5, color: ColorConstants.secondaryColor),
          ),
        ),
      );

  _obscurePassword(bool value) => IconButton(
      onPressed: () {
        setState(() {
          widget.obscureText = !widget.obscureText;
        });
      },
      icon: widget.obscureText
          ? const Icon(Icons.visibility_off,
              color: ColorConstants.secondaryColor)
          : const Icon(Icons.visibility, color: ColorConstants.secondaryColor));
}
