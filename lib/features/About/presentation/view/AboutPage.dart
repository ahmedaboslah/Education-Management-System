import 'package:education_management_system/constants.dart';
import 'package:education_management_system/core/Widgets/AppBar.dart';
import 'package:education_management_system/core/utils/Styles.dart';
import 'package:flutter/material.dart';
import '../../../../core/Widgets/navigation_drawer_widget.dart';
import 'Widgets/AboutPageViewBody.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: MainAppBar(),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: AboutPageViewBody(),
      ),
    );
  }
}
