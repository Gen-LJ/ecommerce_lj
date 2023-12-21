import 'package:flutter/material.dart';

class LJTextFormFieldTheme {
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.withOpacity(0.2),
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,

    labelStyle: TextStyle().copyWith(fontSize: 14,color: Colors.black),
    hintStyle: TextStyle().copyWith(fontSize: 14,color: Colors.black),
    errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1,color: Colors.grey)
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1,color: Colors.grey.withOpacity(0.2))
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1,color: Colors.black)
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1,color: Colors.red)
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1,color: Colors.orange)
    )
  );
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey.withOpacity(0.2),
      errorMaxLines: 3,
      prefixIconColor: Colors.grey,
      suffixIconColor: Colors.grey,

      labelStyle: TextStyle().copyWith(fontSize: 14,color: Colors.white),
      hintStyle: TextStyle().copyWith(fontSize: 14,color: Colors.white),
      errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle: TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
      border: OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(width: 1,color: Colors.grey)
      ),
      enabledBorder: OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(width: 1,color: Colors.grey.withOpacity(0.2))
      ),
      focusedBorder: OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(width: 1,color: Colors.white)
      ),
      errorBorder: OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(width: 1,color: Colors.red)
      ),
      focusedErrorBorder: OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(width: 1,color: Colors.orange)
      )
  );
}