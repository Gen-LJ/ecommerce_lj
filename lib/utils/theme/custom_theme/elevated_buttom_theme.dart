import 'package:flutter/material.dart';

class LJElevatedButtomTheme{


  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.amber,
        disabledBackgroundColor: Colors.grey,
        disabledForegroundColor: Colors.grey,
        side: BorderSide(color: Colors.amber),
        padding: EdgeInsets.symmetric(vertical: 18),
        textStyle: TextStyle().copyWith(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600,fontFamily: 'Ubuntu'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
      )
      );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.amber,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: BorderSide(color: Colors.amber),
          padding: EdgeInsets.symmetric(vertical: 18),
          textStyle: TextStyle().copyWith(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600,fontFamily: 'Ubuntu'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
      )
  );

}