import 'package:education_management_system/core/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:education_management_system/constants.dart';
import '../../../../../core/Widgets/AppBar.dart';
import '../../../../../core/Widgets/navigation_drawer_widget.dart';

import 'course_index.dart';
import 'coursetextheadline.dart';

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
                  Text('data2'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class courseDocument extends StatelessWidget {
  const courseDocument({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Text(
                  'About the Course Headlines',
                  style: Styles.style20,
                ),
                SizedBox(
                  height: 15,
                ),
                courseTextHeadline(
                  text: 'Introduction to html and css',
                ),
                courseTextHeadline(
                  text: 'Introduction to javascript',
                ),
                courseTextHeadline(
                  text: 'Introduction to BootStrap',
                ),
                courseTextHeadline(
                  text: 'Introduction to JQuery',
                ),
                courseTextHeadline(
                  text: 'Introduction to MySQL',
                ),
                courseTextHeadline(
                  text: 'Introduction to Php',
                ),
                courseTextHeadline(
                  text: 'Introduction to react',
                ),
                courseTextHeadline(
                  text: 'Introduction to SASS',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
