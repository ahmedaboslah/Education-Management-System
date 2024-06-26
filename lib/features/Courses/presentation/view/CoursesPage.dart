
import 'package:flutter/material.dart';

import '../../../../core/Widgets/AppBar.dart';
import '../../../../core/Widgets/navigation_drawer_widget.dart';
import 'Widgets/CoursesPageViewBody.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: MainAppBar(),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: CoursesPageViewBody(),
      ),
    );
  }
}
