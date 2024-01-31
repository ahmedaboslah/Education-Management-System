import 'package:education_management_system/constants.dart';
import 'package:flutter/material.dart';
import '../../../../../core/Widgets/AppBar.dart';
import 'course_content_view_body.dart';
import 'student_grade_info.dart';

// ignore: must_be_immutable
class CourseContent extends StatefulWidget {
  CourseContent({super.key, this.bckcolor, this.image});
  String? image;
  Color? bckcolor;

  @override
  State<CourseContent> createState() => _CourseContentState();
}

class _CourseContentState extends State<CourseContent> with TickerProviderStateMixin{
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
      body: Column(
      children: [
        Container(
          child: TabBar(
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
        ),
        Expanded(
          child: Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
              controller: _tabController,
              children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: CourseContentViewBody(bckcolor:widget. bckcolor!, image:widget. image!),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: StudentGrade(),
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
