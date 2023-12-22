
import 'package:ecommerce_lj/features/authentication/screens/login/login.dart';
import 'package:ecommerce_lj/features/authentication/screens/sign_up/widgets/sign_up_form_widget.dart';
import 'package:ecommerce_lj/features/authentication/screens/sign_up/widgets/terms_condition_widget.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../Common/widgets/login_singnup/divider_with_text.dart';
import '../../../../Common/widgets/login_singnup/social_icons.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal :LJSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create your Account',style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: LJSizes.spaceBtwSections,),
              const SignupFormWidget(),
              const SizedBox(height: LJSizes.spaceBtwSections/2,),
              const TermsAndConditionCheckBox(),
              const SizedBox(height: LJSizes.spaceBtwSections,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed:(){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                }, child: const Text('Create Account')),
              ),
              const SizedBox(height: LJSizes.spaceBtwSections/1.2,),
              const DividerWithText(text: 'Or Sign Up with'),
              const SizedBox(height: LJSizes.spaceBtwItems,),
              const SocialIcons()
            ],
          ),
        ),
      ),
    );
  }
}

