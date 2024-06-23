import 'package:education_management_system/constants.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/Styles.dart';
import 'maincontainercourse.dart';

class CoursesPageViewBody extends StatelessWidget {
  const CoursesPageViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 20,
      ),
      Text(
        'Your courses',
        style: Styles.style22.copyWith(fontWeight: FontWeight.bold),
      ),
      const Divider(
        height: 30,
        thickness: 2,
      ),
      Padding(
        padding: const EdgeInsets.all(16),
        child: MainContainerCourse(
          color: mainColor,
          image: 'assets/coursesimage/pngegg.png',
          viewgrade: false,
          pathName: 'Inside_Course_Details.dart',
          coursename: 'Web',
        ),
      )
    ]);
  }
}
