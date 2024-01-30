
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/Styles.dart';
import '../../../../Courses/presentation/view/Widgets/viewButton.dart';
import 'Course_Details.dart';

class ClassInformation extends StatelessWidget {
  const ClassInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Year 1',style: Styles.style20,),
          CourseDetails(
            num: 'Html',
            text: 'Course: ',
          ),
          CourseDetails(
            num: '18',
            text: 'total Students: ',
          ),
          
          ViewButton(
            viewgrade: false,
            onpressed: () {
              GoRouter.of(context).push('/StudentsDetailPage');
            },
            btntext: 'View Students',
          )
        ],
      ),
    );
  }
}

