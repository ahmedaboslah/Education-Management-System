
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class StudentGrades extends StatelessWidget {
  const StudentGrades({Key? key, required this.labeltext, required this.controller}) : super(key: key);
final String labeltext;
final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lightColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        title: TextFormField(decoration: InputDecoration(labelText: labeltext),controller: controller,),
      ),
    );
  }
}
