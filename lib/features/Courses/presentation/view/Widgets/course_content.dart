import 'package:education_management_system/constants.dart';
import 'package:education_management_system/features/Courses/presentation/view/Widgets/each_course_gardes.dart';
import 'package:flutter/material.dart';
import '../../../../../core/Widgets/AppBar.dart';
import 'course_content_view_body.dart';


class CourseContent extends StatefulWidget {
  const CourseContent({super.key, this.bckcolor, this.image});
  final String? image;
  final Color? bckcolor;

  @override
  State<CourseContent> createState() => _CourseContentState();
}

class _CourseContentState extends State<CourseContent>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: isProfessor
          ? Padding(
              padding: const EdgeInsets.all(10),
              child: CourseContentViewBody(
                  bckcolor: widget.bckcolor!, image: widget.image!),
            )
          : Column(
              children: [
                TabBar(
                  labelColor: mainColor,
                  unselectedLabelColor: Colors.black,
                  indicatorColor: mainColor,
                  controller: _tabController,
                  tabs: const [
                    Tab(
                      text: 'Course Details',
                    ),
                    Tab(
                      text: 'Student Grade',
                    )
                  ],
                ),
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: CourseContentViewBody(
                              bckcolor: widget.bckcolor!, image: widget.image!),
                        ),
                         Padding(
                          padding: const EdgeInsets.all(10),
                          child: EachCourseGrades(),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
