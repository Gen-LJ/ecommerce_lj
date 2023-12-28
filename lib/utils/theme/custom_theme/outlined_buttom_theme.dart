import 'package:flutter/material.dart';

class LJOutlinedButtomTheme{
  static OutlinedButtonThemeData lightOutlinedButtomTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.amber,
      backgroundColor: Colors.white,
      side: const BorderSide(color: Colors.amber),
      textStyle: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'Ubuntu'),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))

    )
  );

  static OutlinedButtonThemeData darkOutlinedButtomTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.amber,
          backgroundColor: Colors.black,
          side: const BorderSide(color: Colors.amber),
          textStyle: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'Ubuntu'),
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))

      )
  );
}