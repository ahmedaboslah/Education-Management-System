
import 'package:education_management_system/features/Students/presentation/view/widgets/Course_Details.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../Courses/presentation/view/Widgets/coursedtails.dart';
import '../../../../Courses/presentation/view/Widgets/viewButton.dart';

class ProfessorStudents extends StatelessWidget {
  const ProfessorStudents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          coursedetails(
            text: 'student',
          ),
          CourseDetails(
            num: '000000',
            text: 'ID: ',
          ),
          ViewButton(
            viewgrade: false,
            onpressed: () {
              GoRouter.of(context).push('/Students_information');
            },
            btntext: 'View Profile',
          )
        ],
      ),
    );
  }
}
