
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../Courses/presentation/view/Widgets/coursedtails.dart';
import '../../../../Courses/presentation/view/Widgets/viewButton.dart';
import 'professor_details.dart';

class professorInformation extends StatelessWidget {
  const professorInformation({
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
            text: 'Professor',
          ),
          professordetails(
            num: '4',
            text: 'total courses: ',
          ),
          professordetails(
            num: '18',
            text: 'total videos: ',
          ),
          ViewButton(
            viewgrade: false,
            onpressed: () {
              GoRouter.of(context).push('/ProfileViewdetailspage');
            },
            btntext: 'View Profile',
          )
        ],
      ),
    );
  }
}
