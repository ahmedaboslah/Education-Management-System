
import 'package:flutter/material.dart';

import 'professors_students.dart';

class StudentsindividualDetails extends StatelessWidget {
  const StudentsindividualDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ProfessorStudents(),
    );
  }
}