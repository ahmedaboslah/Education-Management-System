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
      const Padding(
        padding: EdgeInsets.all(16),
        child: mainContainerCourse(),
      )
    ]);
  }
}
