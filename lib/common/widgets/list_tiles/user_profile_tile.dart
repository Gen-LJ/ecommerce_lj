
import 'package:ecommerce_lj/features/personalization/ui/screen/profile/profile.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/images_string.dart';
import '../image/circular_image.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImage(imageUrl: LJImages.profile,backgroundColor: Colors.white,padding: 0,width: 60, height: 60,),
      title: Text('Genichiro',style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),),
      subtitle: Text('genichiro123@gmail.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),),
      trailing: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileScreen()));
      }, icon: const Icon(Icons.edit_outlined),color: Colors.white,),


    );
  }
}