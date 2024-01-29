
import 'package:flutter/material.dart';

import '../../../../Courses/data/Web_Course_data.dart';
import '../../../../Courses/presentation/view/Widgets/maincontainercourse.dart';

class professorCourses extends StatelessWidget {
  const professorCourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return mainContainerCourse(
      isstudent: false,
      color: backcolors[1],
      image: courseImages[1],
      viewgrade: false,
      PathName: 'course_content',
      coursename: coursesName[1],
    );
  }
}
