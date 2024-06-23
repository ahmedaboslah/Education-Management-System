
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';
import 'professorcourse.dart';
import 'profileavatr.dart';

class ProfileViewDeatilsindependent extends StatelessWidget {
  const ProfileViewDeatilsindependent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Professor Profile',
          style: Styles.style22.copyWith(fontWeight: FontWeight.bold),
        ),
        const Divider(
          height: 30,
          thickness: 2,
        ),
        profileavatar(),
        Text(
          'Professor courses',
          style: Styles.style22.copyWith(fontWeight: FontWeight.bold),
        ),
        const Divider(
          height: 30,
          thickness: 2,
        ),
        professorCourses()
      ],
    );
  }
}
