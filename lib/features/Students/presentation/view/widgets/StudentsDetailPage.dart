import 'package:education_management_system/core/Widgets/AppBar.dart';
import 'package:flutter/material.dart';

import 'students_details_view_body.dart';

class StudentsDetailsPage extends StatelessWidget {
  const StudentsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body:StudentsDetailsViewBody() ,
    );
  }
}


