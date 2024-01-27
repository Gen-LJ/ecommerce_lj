import 'package:ecommerce_lj/Common/widgets/icon/circular_icon.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = LJDeviceUtils.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: LJSizes.defaultSpace,vertical: LJSizes.defaultSpace/2),
      decoration: BoxDecoration(
        color: dark ? Colors.grey : Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(LJSizes.cardRadiusLg),
          topRight: Radius.circular(LJSizes.cardRadiusLg)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(icon: Icons.remove, onPressed: (){},
                size: 20,
              width: 35,
              height: 35,
              backgroundColor:  dark ? Colors.black.withOpacity(0.3) : Colors.grey,
              color:  Colors.white,),
              SizedBox(width: LJSizes.spaceBtwItems,),
              Text('3',style: Theme.of(context).textTheme.titleSmall,),
              SizedBox(width: LJSizes.spaceBtwItems,),
              CircularIcon(icon: Icons.add, onPressed: (){},
                size: 20,
                width: 35,
                height: 35,
                backgroundColor:  Colors.amber,
                color:  Colors.white,),
            ],
          ),
          ElevatedButton(onPressed: (){}, child: Text('Add To Cart',style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.white),),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(LJSizes.md),
            backgroundColor: Colors.amber
          ),)
        ],
      ),

    );
  }
}
