import 'package:education_management_system/constants.dart';
import 'package:education_management_system/features/Courses/data/courses_grade_lists.dart';
import 'package:education_management_system/features/Students/presentation/view/students.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/Styles.dart';
import 'coursedtails.dart';
import 'courseimage.dart';
import 'viewButton.dart';

class CourseContentDetails extends StatelessWidget {
  const CourseContentDetails({
    Key? key, // Change super.key to Key? key
    required this.image,
    required this.bckcolor,
  }) : super(key: key); // Call the super constructor with key parameter

  final String image;
  final Color bckcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          courseImage(image: image, color: bckcolor),
          coursedetails(),
          Text(
            isProfessor ? 'Your course' : 'Complete Tutorial',
            style: Styles.style20
                .copyWith(fontWeight: FontWeight.w600, fontSize: 17),
          ),
          SizedBox(
            child: ViewButton(
              btntext: isProfessor ? 'Student Grade' : 'View Profile',
              viewgrade: false,
              onpressed:isProfessor ?(){
                 Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return StudentsPage(gradesList: WebSkills,);
                },
              ));
              } :() {
                GoRouter.of(context).push('/ProfileViewdetailspage');
              },
            ),
          )
        ],
      ),
    );
  }
}
