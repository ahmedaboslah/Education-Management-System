
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';
import 'coursedtails.dart';
import 'courseimage.dart';
import 'viewButton.dart';

class mainContainerCourse extends StatelessWidget {
  const mainContainerCourse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 40,
          child: coursedetails(),
        ),
        const SizedBox(height: 15,),
        const courseImage(),
        const SizedBox(height: 15,),
        Text(
          'Complete Web Tutorial',
          style: Styles.style20
              .copyWith(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        const SizedBox(height: 15,),
        const ViewButton()
      ]),
    );
  }
}