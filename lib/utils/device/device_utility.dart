

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LJDeviceUtils{
   static void hideKeyboard(BuildContext context){
     FocusScope.of(context).requestFocus(FocusNode());
   }

   static Future<void> setStatusBarColor(Color color) async{
     SystemChrome.setSystemUIOverlayStyle(
       SystemUiOverlayStyle(statusBarColor: color)
     );
   }

   static bool isLandScapeOrientation(BuildContext context){
     final viewInsets = View.of(context).viewInsets;
     return viewInsets.bottom == 0;
   }

   static bool isPortraitOrientation(BuildContext context){
     final viewInsets = View.of(context).viewInsets;
     return viewInsets.bottom != 0;
   }

   static void setFullScreen(bool enable){
     SystemChrome.setEnabledSystemUIMode(enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);

   }

   static double getScreenHeight (BuildContext context){
     return MediaQuery.of(context).size.height;
   }

   static double getScreenWidth (BuildContext context){
     return MediaQuery.of(context).size.width;
   }

   static double getPixelRation(BuildContext context){
     return MediaQuery.of(context).devicePixelRatio;
   }

   static double getStatusBarHeight(BuildContext context){
     return MediaQuery.of(context).padding.top;
   }

   static double getKeyboardHeight(BuildContext context){
     final viewInsets = MediaQuery.of(context).viewInsets;
     return viewInsets.bottom;
   }

   static Future<bool> isKeyBoardVisible(BuildContext context) async {
     final viewInsets = MediaQuery.of(context).viewInsets;
     return viewInsets.bottom > 0;
   }

   static Future<bool> isPhysicalDevice() async {
     return defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;
   }

   static void vibrate (Duration duration) {
     HapticFeedback.vibrate();
     Future.delayed(duration,(){
       return HapticFeedback.vibrate();
     });
   }

   static void showStatusBar(){
     SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
   }

   static void hideStatusBar(){
     SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: []);
   }

   static bool isDarkMode(BuildContext context){
     return Theme.of(context).brightness == Brightness.dark;
   }


}