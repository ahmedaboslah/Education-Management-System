import 'package:education_management_system/core/utils/Styles.dart';
import 'package:flutter/material.dart';

import 'courseimage.dart';

class courseVideos extends StatelessWidget {
   courseVideos({
    super.key,
    required this.bckcolor,
    required this.image,
     this.videonum
  });

  final Color bckcolor;
  final String image;
  final int? videonum;
  @override
  Widget build(BuildContext context) {
    int index=videonum!+1;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          courseImage(
            color: bckcolor,
            image: image,
          ),
          SizedBox(height: 8,),
           Text(
            'Play Video Part ${index}',
            style: Styles.style20,
          )
        ],
      ),
    );
  }
}
