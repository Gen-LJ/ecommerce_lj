import 'package:ecommerce_lj/Common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_lj/features/personalization/ui/screen/address/widgets/add_new_address.dart';
import 'package:ecommerce_lj/features/personalization/ui/screen/address/widgets/single_address.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddNewAddressScreen()));
          },
      child: const Icon(Icons.add,color: Colors.white,),),
      appBar: LJAppBar(title: Text('Address',style: Theme.of(context).textTheme.headlineSmall,),showBackArrow: true,),
      body: const SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(
          horizontal: LJSizes.defaultSpace,
          vertical: LJSizes.defaultSpace/2,
        ),
        child: Column(
          children: [
            SingleAddress(selectedAddress: true),
            SingleAddress(selectedAddress: false),

          ],
        ),),
      ),

    );
  }
}
