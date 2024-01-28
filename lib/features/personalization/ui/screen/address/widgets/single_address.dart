import 'package:ecommerce_lj/Common/widgets/container/rounded_container.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});


  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = LJDeviceUtils.isDarkMode(context);

    return RoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(LJSizes.md),
      backgroundColor: selectedAddress ? Colors.amber.withOpacity(0.4) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark? Colors.grey : Colors.grey.withOpacity(0.3),
      margin: const EdgeInsets.only(bottom: LJSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Icon(selectedAddress ? Icons.check_circle : null ,
            color: selectedAddress ?
            dark ? Colors.white : Colors.black.withOpacity(0.4)
                : null,

            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Genichiro Ashina',maxLines: 1,overflow: TextOverflow.ellipsis,),
              SizedBox(height: LJSizes.xs),
              Text('+959719654278',maxLines: 1,overflow: TextOverflow.ellipsis,),
              SizedBox(height: LJSizes.xs),
              Text('No 107, 123th Street, Aung Myay Thar Zan, 3rd-Quarter, Mandalay',
                softWrap: true,
              ),
            ],
          )

        ],
      ),


    );
  }
}
