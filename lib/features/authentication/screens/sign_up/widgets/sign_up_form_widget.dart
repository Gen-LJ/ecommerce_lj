import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(children: [
      Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: 'First Name'
                ),
              ),
            ),
          ),
          const SizedBox(width: LJSizes.spaceBtwItems,),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Last Name'
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: LJSizes.spaceBtwInputField,),
      SizedBox(
        height: 50,
        child: TextFormField(
          expands: false,
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person_pin_rounded),
              hintText: 'Username'
          ),
        ),
      ),
      const SizedBox(height: LJSizes.spaceBtwInputField,),
      SizedBox(
        height: 50,
        child: TextFormField(
          expands: false,
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              hintText: 'Email'
          ),
        ),
      ),
      const SizedBox(height: LJSizes.spaceBtwInputField,),
      SizedBox(
        height: 50,
        child: TextFormField(
          expands: false,
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.phone),
              hintText: 'Phone Number'
          ),
        ),
      ),
      const SizedBox(height: LJSizes.spaceBtwInputField,),
      SizedBox(
        height: 50,
        child: TextFormField(
          expands: false,
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock_outline_rounded),
              suffixIcon: Icon(Icons.visibility_off),
              hintText: 'Password'
          ),
        ),
      ),
    ],
    )
    );
  }
}