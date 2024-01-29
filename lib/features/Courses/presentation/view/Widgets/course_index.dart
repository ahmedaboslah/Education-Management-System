import 'package:education_management_system/features/Courses/data/Web_Course_data.dart';
import 'package:education_management_system/features/Courses/presentation/view/Widgets/maincontainercourse.dart';
import 'package:flutter/material.dart';

class courseIndex extends StatelessWidget {
  const courseIndex({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: mainContainerCourse(
              color: backcolors[index],
              image: courseImages[index],
              viewgrade: false,
              PathName: 'course_content',
              coursename: coursesName[index],
            ),
          );
        },
        itemCount: courseImages.length,
      ),
    );
  }
}
