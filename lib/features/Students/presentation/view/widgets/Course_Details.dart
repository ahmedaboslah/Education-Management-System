
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/Styles.dart';

// ignore: must_be_immutable
class CourseDetails extends StatelessWidget {
  CourseDetails({super.key, required this.text, required this.num});
  String text;
  String num;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Styles.style18,
        ),
        Text(
          num,
          style: Styles.style18.copyWith(color: mainColor),
        )
      ],
    );
  }
}