
import 'package:education_management_system/core/Widgets/AppBar.dart';

import 'package:flutter/material.dart';

import '../../../../core/Widgets/navigation_drawer_widget.dart';

import 'widgets/profileviewpage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      drawer: NavigationDrawerWidget(),
      body: ProfileViewPage(),
    );
  }
}
