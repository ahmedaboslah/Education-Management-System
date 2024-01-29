import 'package:education_management_system/core/Widgets/AppBar.dart';
import 'package:flutter/material.dart';
import 'profileViewDetailsindependent.dart';

class ProfessorViewPagedetails extends StatelessWidget {
  const ProfessorViewPagedetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: ProfileViewDeatilsindependent(),
        ),
      ),
    );
  }
}
