
import 'package:education_management_system/features/Courses/data/courses_grade_lists.dart';
import 'package:education_management_system/features/Students/presentation/model/user_model.dart';
import 'package:education_management_system/features/Students/presentation/view/widgets/Course_Details.dart';
import 'package:education_management_system/features/Students/presentation/view/widgets/Students_information.dart';
import 'package:education_management_system/features/Students/presentation/view/widgets/each_course_student_information.dart';
import 'package:flutter/material.dart';

import '../../../../Courses/presentation/view/Widgets/coursedtails.dart';
import '../../../../Courses/presentation/view/Widgets/viewButton.dart';

class ProfessorStudents extends StatelessWidget {
  const ProfessorStudents({
    super.key, required this.gradesList, required this.UserData,
  });
final List gradesList;
final UserModedl UserData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          coursedetails(
            name: UserData.name,
            text: 'student',
          ),
          CourseDetails(
            num: UserData.id,
            text: 'ID: ',
          ),
          ViewButton(
            viewgrade: false,
            onpressed: () {
              if(gradesList==WebSkills){
                Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return EachStudentInformation(id: UserData.id,nameN: UserData.name,);
                },
              ));
              }
              else{
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return StudentInformation(gradeslist: gradesList, id: UserData.id, name: UserData.name,);
                },
              ));
              }
            },
            btntext: 'View Profile',
          )
        ],
      ),
    );
  }
}
