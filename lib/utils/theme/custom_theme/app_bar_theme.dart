import 'package:flutter/material.dart';

class LJAppbarTheme{
  static AppBarTheme lightAppbarTheme= AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: const IconThemeData(color : Colors.black,size: 24),
    actionsIconTheme: const IconThemeData(color : Colors.black,size: 24),
    titleTextStyle: const TextStyle().copyWith(fontFamily :'Ubuntu',fontSize: 18.0, fontWeight: FontWeight.w600,color: Colors.black)
  );
  static AppBarTheme darkAppbarTheme= AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: const IconThemeData(color : Colors.white,size: 24),
      actionsIconTheme: const IconThemeData(color : Colors.white,size: 24),
      titleTextStyle: const TextStyle().copyWith(fontFamily: 'Ubuntu',fontSize: 18.0, fontWeight: FontWeight.w600,color: Colors.white)
  );
}