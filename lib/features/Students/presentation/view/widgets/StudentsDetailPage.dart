import 'package:education_management_system/core/Widgets/AppBar.dart';
import 'package:flutter/material.dart';

import 'students_details_view_body.dart';

class StudentsDetailsPage extends StatelessWidget {
  const StudentsDetailsPage({super.key, required this.gradesList});
final List gradesList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body:StudentsDetailsViewBody(gradesList: gradesList) ,
    );
  }
}


