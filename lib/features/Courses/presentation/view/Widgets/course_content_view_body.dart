import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';

import 'course_content_main_column.dart';
import 'course_videos.dart';

// ignore: must_be_immutable
class CourseContentViewBody extends StatelessWidget {
  CourseContentViewBody(
      {super.key, required this.bckcolor, required this.image});
  String image;
  Color bckcolor;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: courseContentMaincolumn(image: image, bckcolor: bckcolor),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Course videos',
                style: Styles.style22.copyWith(fontWeight: FontWeight.bold),
              ),
              const Divider(
                height: 30,
                thickness: 2,
              ),
            ]),
          ),
        ),
        SliverList.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: courseVideos(
                  bckcolor: bckcolor, image: image, videonum: index),
            );
          },
        )
      ],
    );
  }
}
