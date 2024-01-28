import 'package:ecommerce_lj/Common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_lj/Common/widgets/texts/section_header.dart';
import 'package:ecommerce_lj/common/widgets/image/circular_image.dart';
import 'package:ecommerce_lj/features/personalization/ui/screen/profile/widget/profile_menu.dart';
import 'package:ecommerce_lj/utils/constants/images_string.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LJAppBar(title: Text('Profile'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: LJSizes.defaultSpace,vertical: LJSizes.sm),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const CircularImage(imageUrl: LJImages.profile,backgroundColor: Colors.white,padding: 0,width: 60, height: 60,),
                  TextButton(onPressed: (){}, child: const Text('Change profile picture'))
                ],
              ),
            ),

            const SizedBox(height: LJSizes.sm,),
            const Divider(),
            const SizedBox(height: LJSizes.sm,),

            const SectionHeader(title: 'Profile Information'),

            const SizedBox(height: LJSizes.sm,),


            ProfileMenu(onPressed: () {  }, title: 'Name', value: 'Genichiro',),
            ProfileMenu(onPressed: () {  }, title: 'Username', value: 'genichiro_ashina',),

            const Divider(),
            const SizedBox(height: LJSizes.sm,),

            const SectionHeader(title: 'Personal information'),

            const SizedBox(height: LJSizes.sm,),

            ProfileMenu(onPressed: () {  }, title: 'User ID', value: '336795',),
            ProfileMenu(onPressed: () {  }, title: 'Phone Number', value: '09783432746',),
            ProfileMenu(onPressed: () {  }, title: 'E-mail', value: 'genichiro12345@gmail.com',),
            ProfileMenu(onPressed: () {  }, title: 'Gender', value: 'Male',),
            ProfileMenu(onPressed: () {  }, title: 'Date of Birth', value: '12 Aug, 1995',),
            const Divider(),

            TextButton(onPressed: (){}, child: const Text('Delete Account',style: TextStyle(color: Colors.red),))

          ],
        ),),
      ),
    );
  }
}

