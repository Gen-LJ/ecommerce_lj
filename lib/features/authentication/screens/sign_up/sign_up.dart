import 'package:ecommerce_lj/Common/widgets.login_signup/divider_with_text.dart';
import 'package:ecommerce_lj/Common/widgets.login_signup/social_icons.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = LJDeviceUtils.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal :LJSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create your Account',style: Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: LJSizes.spaceBtwSections,),
              Form(child: Column(children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: TextFormField(
                          expands: false,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'First Name'
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: LJSizes.spaceBtwItems,),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: TextFormField(
                          expands: false,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: 'Last Name'
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: LJSizes.spaceBtwInputField,),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_pin_rounded),
                        hintText: 'Username'
                    ),
                  ),
                ),
                SizedBox(height: LJSizes.spaceBtwInputField,),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        hintText: 'Email'
                    ),
                  ),
                ),
                SizedBox(height: LJSizes.spaceBtwInputField,),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        hintText: 'Phone Number'
                    ),
                  ),
                ),
                SizedBox(height: LJSizes.spaceBtwInputField,),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        suffixIcon: Icon(Icons.visibility_off),
                        hintText: 'Password'
                    ),
                  ),
                ),
              ],
              )
              ),
              SizedBox(height: LJSizes.spaceBtwSections/2,),
              Row(
                children: [
                  SizedBox(
                    width: 24,height: 24,
                    child: Checkbox(value: true, onChanged: (value){

                    }),
                  ),
                  SizedBox(width: LJSizes.spaceBtwItems,),
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: 'I agree to ',style: Theme.of(context).textTheme.bodySmall
                      ),
                      TextSpan(
                          text: 'Privacy Policy ',style: Theme.of(context).textTheme.bodyMedium!.apply(

                          color: dark? Colors.white : Colors.amber,
                          decoration: TextDecoration.underline,
                          decorationColor: dark? Colors.white : Colors.amber
                      ),

                      ),
                      TextSpan(
                          text: 'and ',style: Theme.of(context).textTheme.bodySmall
                      ),
                      TextSpan(
                          text: 'Terms of use',style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark? Colors.white : Colors.amber,
                          decoration: TextDecoration.underline,
                        decorationColor: dark? Colors.white : Colors.amber
                      )
                      ),
                    ])
                    )

                ],
              ),
              SizedBox(height: LJSizes.spaceBtwSections,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed:(){

                }, child: Text('Create Account')),
              ),
              SizedBox(height: LJSizes.spaceBtwSections/1.2,),
              DividerWithText(text: 'Or Sign Up with'),
              SizedBox(height: LJSizes.spaceBtwItems,),
              SocialIcons()
            ],
          ),
        ),
      ),
    );
  }
}
