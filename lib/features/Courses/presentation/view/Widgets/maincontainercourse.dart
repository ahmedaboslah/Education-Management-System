import 'package:education_management_system/features/Courses/presentation/view/Widgets/course_content.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/Styles.dart';
import 'coursedtails.dart';
import 'courseimage.dart';
import 'viewButton.dart';

// ignore: must_be_immutable
class mainContainerCourse extends StatelessWidget {
  mainContainerCourse(
      {super.key,
      required this.viewgrade,
      required this.PathName,
      required this.image,
      required this.coursename,
      required this.color,
      this.isstudent=true
      });
  String PathName;
  String image;
  String coursename;
  Color color;
  bool viewgrade;
  bool ?isstudent;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
         
         SizedBox(
          height: 40,
          child: coursedetails(),
        ),
        const SizedBox(
          height: 15,
        ),
        courseImage(
          image: image,
          color: color,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Complete $coursename Tutorial',
          style: Styles.style20
              .copyWith(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        const SizedBox(
          height: 15,
        ),
        ViewButton(
          viewgrade: viewgrade,
          onpressed: () {
            if (PathName == 'course_content') {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return CourseContent(bckcolor: color, image: image);
                },
              ));
            }else if(isstudent ==false){
              GoRouter.of(context).pop();
            }
             else {
              GoRouter.of(context).push('/$PathName');
            }
          },
        )
      ]),
    );
  }
}
