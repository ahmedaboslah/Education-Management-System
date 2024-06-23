
import 'package:education_management_system/features/Courses/data/courses_grade_lists.dart';
import 'package:flutter/material.dart';

import 'Class_information.dart';

class StudentMainContainer extends StatelessWidget {
  const StudentMainContainer({
    super.key, required this.gradesList,
  });
 final List gradesList;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child:  ClassInformation(gradesList: gradesList,coursename: gradesList==WebSkills?'Html':'Web Developmemt'),
    );
  }
}