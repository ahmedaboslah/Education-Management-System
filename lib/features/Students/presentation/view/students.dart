import 'package:flutter/material.dart';

import '../../../../core/Widgets/AppBar.dart';
import '../../../../core/Widgets/navigation_drawer_widget.dart';
import 'widgets/student_view_page.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      drawer: const NavigationDrawerWidget(),
      body: const StudentViewPage(),
    );
  }
}
