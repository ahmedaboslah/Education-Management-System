
import 'package:education_management_system/constants.dart';
import 'package:flutter/material.dart';

class courseImage extends StatelessWidget {
   courseImage({
    super.key,required this.image,required this.color
  });
String image;
Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        image:  DecorationImage(
          image: AssetImage(
            image,
          ),
        ),
      ),
    );
  }
}

