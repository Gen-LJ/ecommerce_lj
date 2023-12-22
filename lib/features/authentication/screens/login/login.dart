import 'package:ecommerce_lj/Common/styles/spacing_styles.dart';
import 'package:ecommerce_lj/features/authentication/screens/login/widgets/login_form_widget.dart';
import 'package:ecommerce_lj/features/authentication/screens/login/widgets/login_header_widget.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../../Common/widgets/login_singnup/divider_with_text.dart';
import '../../../../Common/widgets/login_singnup/social_icons.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = LJDeviceUtils.isDarkMode(context);

    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: LJSpacingStyle.paddingNoAppbar,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginHeader(),
              LoginForm(),
              DividerWithText(text: 'Or Sign In with',),
              SizedBox(height: LJSizes.spaceBtwItems,),
              SocialIcons()
            ],
          ),
        ),
      ),
    );
  }
}

