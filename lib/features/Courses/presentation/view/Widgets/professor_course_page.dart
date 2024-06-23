import 'package:education_management_system/core/Widgets/AppBar.dart';
import 'package:education_management_system/core/Widgets/navigation_drawer_widget.dart';
import 'package:education_management_system/features/Courses/presentation/view/Widgets/course_index.dart';
import 'package:flutter/material.dart';

class ProfessorCoursePage extends StatelessWidget {
  const ProfessorCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: const NavigationDrawerWidget(),
      appBar: MainAppBar(),
      body: courseIndex(),
    );
  }
}