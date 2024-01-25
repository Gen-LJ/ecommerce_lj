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
      appBar: LJAppBar(title: Text('Profile'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: LJSizes.defaultSpace,vertical: LJSizes.sm),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const CircularImage(imageUrl: LJImages.profile,backgroundColor: Colors.white,padding: 0,width: 60, height: 60,),
                  TextButton(onPressed: (){}, child: Text('Change profile picture'))
                ],
              ),
            ),

            SizedBox(height: LJSizes.sm,),
            Divider(),
            SizedBox(height: LJSizes.sm,),

            SectionHeader(title: 'Profile Information'),

            SizedBox(height: LJSizes.sm,),


            ProfileMenu(onPressed: () {  }, title: 'Name', value: 'Genichiro',),
            ProfileMenu(onPressed: () {  }, title: 'Username', value: 'genichiro_ashina',),

            Divider(),
            SizedBox(height: LJSizes.sm,),

            SectionHeader(title: 'Personal information'),

            SizedBox(height: LJSizes.sm,),

            ProfileMenu(onPressed: () {  }, title: 'User ID', value: '336795',),
            ProfileMenu(onPressed: () {  }, title: 'Phone Number', value: '09783432746',),
            ProfileMenu(onPressed: () {  }, title: 'E-mail', value: 'genichiro12345@gmail.com',),
            ProfileMenu(onPressed: () {  }, title: 'Gender', value: 'Male',),
            ProfileMenu(onPressed: () {  }, title: 'Date of Birth', value: '12 Aug, 1995',),
            Divider(),

            TextButton(onPressed: (){}, child: Text('Delete Account',style: TextStyle(color: Colors.red),))

          ],
        ),),
      ),
    );
  }
}

