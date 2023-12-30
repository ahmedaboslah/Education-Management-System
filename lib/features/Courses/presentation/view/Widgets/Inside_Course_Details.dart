import 'package:education_management_system/features/Courses/presentation/view/Widgets/maincontainercourse.dart';
import 'package:flutter/material.dart';

import '../../../../../core/Widgets/AppBar.dart';
import '../../../../../core/Widgets/navigation_drawer_widget.dart';
import '../../../data/Web_Course_data.dart';

class InsideCourseDetails extends StatelessWidget {
  const InsideCourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: MainAppBar(),
      body:  Column(
        children: [
          Expanded(
            child: Padding(
              padding:const EdgeInsets.all(16),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical:16),
                    child: mainContainerCourse(color:backcolors[index] ,image:courseImages[index] ,viewgrade: false,PathName: '', coursename: coursesName[index],),
                  );
                },
                itemCount:courseImages.length ,
                 ),
            ),
          ),
        ],
      ),
    );
  }
}