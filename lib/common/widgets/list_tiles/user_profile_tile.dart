
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
      leading: const CircularImage(imageUrl: LJImages.adidasLogo,width: 50,height: 50,padding: 5,backgroundColor: Colors.white,),
      title: Text('Genichiro',style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),),
      subtitle: Text('genichiro123@gmail.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.edit_outlined),color: Colors.white,),


    );
  }
}