import 'package:flutter/material.dart';

// ignore: must_be_immutable
class courseImage extends StatelessWidget {
  courseImage(
      {super.key, required this.image, required this.color, this.text = ''});
  String image;
  Color color;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
        ),
      ),
      child: Text(text),
    );
  }
}
