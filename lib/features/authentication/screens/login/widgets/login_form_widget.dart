
import 'package:ecommerce_lj/features/authentication/screens/sign_up/sign_up.dart';
import 'package:ecommerce_lj/features/navigation/navigation.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: LJSizes.spaceBtwSections/1.2),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined,),
                  hintText: 'Email'
              ),
            ),
            const SizedBox(height: LJSizes.spaceBtwInputField,),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline_rounded,),
                  suffixIcon: Icon(Icons.visibility_off),
                  hintText: 'Password'
              ),
            ),
            const SizedBox(height: LJSizes.spaceBtwInputField /2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){

                    }),
                    const Text('Remember Me'),
                  ],
                ),
                TextButton(onPressed: (){

                }, child: const Text('Forgot Password?'))
              ],
            ),
            const SizedBox(height: LJSizes.spaceBtwSections/1.3,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BotNavigationScreen()));
              }, child: const Text('Sign In')),
            ),
            const SizedBox(height: LJSizes.spaceBtwItems,),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
              }, child: const Text('Create Account')),
            )
          ],
        ),
      ),
    );
  }
}
