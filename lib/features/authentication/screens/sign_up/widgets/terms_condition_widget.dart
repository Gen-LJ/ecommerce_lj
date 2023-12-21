import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';


class TermsAndConditionCheckBox extends StatelessWidget {
  const TermsAndConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = LJDeviceUtils.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,height: 24,
          child: Checkbox(value: true, onChanged: (value){

          }),
        ),
        const SizedBox(width: LJSizes.spaceBtwItems,),
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
    );
  }
}
