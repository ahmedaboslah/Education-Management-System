import 'package:education_management_system/core/Widgets/AppBar.dart';
import 'package:flutter/material.dart';

import '../../../../core/Widgets/navigation_drawer_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: MainAppBar(),
    );
  }
}