import 'package:education_management_system/core/utils/Styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:education_management_system/constants.dart';
import '../../../../../core/Widgets/AppBar.dart';
import '../../../../../core/Widgets/navigation_drawer_widget.dart';

import 'Course_chart.dart';
import 'course_index.dart';

import 'student_grade_info.dart';

class InsideCourseDetails extends StatefulWidget {
  const InsideCourseDetails({Key? key}) : super(key: key);

  @override
  State<InsideCourseDetails> createState() => _InsideCourseDetailsState();
}

class _InsideCourseDetailsState extends State<InsideCourseDetails>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
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
                  text: 'Course Page',
                ),
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
                  courseIndex(),
                  courseDocument(),
                  StudentGrade(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
