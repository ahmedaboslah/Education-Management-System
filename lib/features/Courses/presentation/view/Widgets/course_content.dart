
import 'package:flutter/material.dart';
import '../../../../../core/Widgets/AppBar.dart';
import 'course_content_view_body.dart';

// ignore: must_be_immutable
class CourseContent extends StatelessWidget {
   CourseContent({super.key, this.bckcolor, this.image});
String? image;
Color? bckcolor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: MainAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: CourseContentViewBody(bckcolor: bckcolor!,image: image!),
      ),
    );
  }
}
