import 'package:flutter/material.dart';
import 'package:flutter_application/src/utils/theme/widget_themes/outline_button_theme.dart';
import 'package:flutter_application/src/utils/theme/widget_themes/text_form_field_theme.dart';
import 'package:flutter_application/src/utils/theme/widget_themes/text_theme.dart';

import 'widget_themes/elevated_button_theme.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TTextTheme.lightTextTheme,
      outlinedButtonTheme: tOutlineButtonTheme.lightOutlineButtonTheme,
      elevatedButtonTheme: TElevatedBottonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputdecorationTheme);
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TTextTheme.darkTextTheme,
      outlinedButtonTheme: tOutlineButtonTheme.darkOutlineButtonTheme,
      elevatedButtonTheme: TElevatedBottonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputdecorationTheme);
}
