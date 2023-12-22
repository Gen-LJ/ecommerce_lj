
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.grey)
          ),
          child: IconButton(
            onPressed: (){

            },
            icon : const Icon(Icons.g_mobiledata_rounded,size: LJSizes.iconLg,),
          ),),
        const SizedBox(width: LJSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.grey)
          ),
          child: IconButton(
              onPressed: (){

              },
              icon : const Icon(Icons.facebook,color: Colors.blue,size: LJSizes.iconLg,)

          ),
        ),
      ],
    );
  }
}

