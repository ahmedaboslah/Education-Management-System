
import 'package:education_management_system/core/utils/Styles.dart';
import 'package:flutter/material.dart';

import 'Course_content_detail.dart';

class courseContentMaincolumn extends StatelessWidget {
  const courseContentMaincolumn({
    super.key,
    required this.image,
    required this.bckcolor,
  });

  final String image;
  final Color bckcolor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Course details',
          style: Styles.style22.copyWith(fontWeight: FontWeight.bold),
        ),
        const Divider(
          height: 30,
          thickness: 2,
        ),
        SizedBox(
          height: 8,
        ),
        CourseContentDetails(image: image, bckcolor: bckcolor)
      ],
    );
  }
}
