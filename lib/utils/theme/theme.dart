import 'package:ecommerce_lj/utils/theme/custom_theme/app_bar_theme.dart';
import 'package:ecommerce_lj/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:ecommerce_lj/utils/theme/custom_theme/check_box_theme.dart';
import 'package:ecommerce_lj/utils/theme/custom_theme/chip_theme.dart';
import 'package:ecommerce_lj/utils/theme/custom_theme/elevated_buttom_theme.dart';
import 'package:ecommerce_lj/utils/theme/custom_theme/outlined_buttom_theme.dart';
import 'package:ecommerce_lj/utils/theme/custom_theme/text_form_field_theme.dart';
import 'package:ecommerce_lj/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class LJAppTheme{
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Ubuntu',
    brightness: Brightness.light,
    primaryColor: Colors.amber,
    scaffoldBackgroundColor: Colors.white,
    textTheme: LJTextTheme.lightTextTheme,
    appBarTheme: LJAppbarTheme.lightAppbarTheme,
    bottomSheetTheme: LJBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: LJCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: LJChipTheme.lightChipTheme,
    elevatedButtonTheme: LJElevatedButtomTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: LJOutlinedButtomTheme.lightOutlinedButtomTheme,
    inputDecorationTheme: LJTextFormFieldTheme.lightInputDecorationTheme
  );
  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Ubuntu',
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    scaffoldBackgroundColor: Colors.black12,
    textTheme: LJTextTheme.darkTextTheme,
    appBarTheme: LJAppbarTheme.darkAppbarTheme,
    bottomSheetTheme: LJBottomSheetTheme.darkBottomSheetTheme,
     checkboxTheme: LJCheckBoxTheme.darkCheckBoxTheme,
    chipTheme: LJChipTheme.darkChipTheme,
    elevatedButtonTheme: LJElevatedButtomTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: LJOutlinedButtomTheme.darkOutlinedButtomTheme,
    inputDecorationTheme: LJTextFormFieldTheme.darkInputDecorationTheme
  );
}