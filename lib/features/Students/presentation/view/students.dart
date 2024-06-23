import 'package:flutter/material.dart';

import '../../../../core/Widgets/AppBar.dart';
import '../../../../core/Widgets/navigation_drawer_widget.dart';
import 'widgets/student_view_page.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key, required this.gradesList});
final List gradesList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      drawer: const NavigationDrawerWidget(),
      body:    StudentViewPage(gradesList: gradesList),
    );
  }
}
