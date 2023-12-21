import 'package:flutter/material.dart';

class LJCheckBoxTheme {
  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }
      else {
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.amber;
      }
      else{
        return Colors.transparent;
      }
    })
  );

  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.selected)){
          return Colors.black;
        }
        else {
          return Colors.white;
        }
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.selected)){
          return Colors.amber;
        }
        else{
          return Colors.transparent;
        }
      })
  );
}