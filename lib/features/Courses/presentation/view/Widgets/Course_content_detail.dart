
import 'package:education_management_system/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/Styles.dart';
import 'coursedtails.dart';
import 'courseimage.dart';
import 'viewButton.dart';

class CourseContentDetails extends StatelessWidget {
  const CourseContentDetails({
    super.key,
    required this.image,
    required this.bckcolor,
  
  });

  final String image;
  final Color bckcolor;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height *0.6,
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          courseImage(image: image, color: bckcolor),
          coursedetails(),
          Text(
            isProfessor ? 'Your course' :'Complete Tutorial',
            style: Styles.style20
                .copyWith(fontWeight: FontWeight.w600, fontSize: 17),
          ),
          SafeArea(
            child:ViewButton(btntext:isProfessor?'Update course': 'View Profile',viewgrade: false,onpressed: () {
              GoRouter.of(context).push('/ProfileViewdetailspage');
            },),
          )
        ],
      ),
    );
  }
}
