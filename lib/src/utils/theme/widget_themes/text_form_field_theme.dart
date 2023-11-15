import 'package:flutter/material.dart';
import 'package:flutter_application/src/constants/colors.dart';

class TTextFormFieldTheme {
  static InputDecorationTheme lightInputdecorationTheme =
      const InputDecorationTheme(
    border: OutlineInputBorder(),
    iconColor: tSecondaryColor,
    labelStyle: TextStyle(color: tSecondaryColor),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2.0, color: tSecondaryColor)),
  );

  static InputDecorationTheme darkInputdecorationTheme =
      const InputDecorationTheme(
    border: OutlineInputBorder(),
    iconColor: tPrimaryColor,
    labelStyle: TextStyle(color: tPrimaryColor),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2.0, color: tPrimaryColor)),
  );
}
