import 'package:flutter/material.dart';

import '../../../../Common/widgets/appbar/app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LJAppBar(title: Text('Profile'),),
    );
  }
}