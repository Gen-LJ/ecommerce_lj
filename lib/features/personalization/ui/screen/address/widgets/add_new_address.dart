import 'package:ecommerce_lj/Common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const LJAppBar(title: Text('Add New Address'),showBackArrow: true
        ,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: LJSizes.defaultSpace,vertical: LJSizes.defaultSpace/2),
        child: Column(
          children: [
            TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Icons.person_outline_rounded),labelText: 'Name'),),
            const SizedBox(height: LJSizes.spaceBtwInputField,),
            TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Icons.phone_iphone_rounded),labelText: 'Phone Number'),),
            const SizedBox(height: LJSizes.spaceBtwInputField,),
            TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Icons.home_work_outlined),labelText: 'Address'),maxLines: 4,textAlign: TextAlign.start,),
            const SizedBox(height: LJSizes.spaceBtwSections,),
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text('Save')),)
          ],
        ),
      ),
    );
  }
}
