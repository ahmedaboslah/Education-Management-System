
import 'package:flutter/material.dart';

import 'Class_information.dart';

class StudentMainContainer extends StatelessWidget {
  const StudentMainContainer({
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
      child: const ClassInformation(),
    );
  }
}