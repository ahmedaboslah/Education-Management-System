import 'package:education_management_system/core/Widgets/AppBar.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/Widgets/StudentAvatar.dart';
import '../../../../../core/utils/Styles.dart';

class StudentInformation extends StatelessWidget {
  const StudentInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12)
                  ,color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Student Profile',
                      style: Styles.style22.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Divider(
                      height: 30,
                      thickness: 2,
                    ),
                    StudentAvatar()
                  ],
                ),
              ),
            ),
            StudentInformationDetails(),
          ],
        ),
      ),
    );
  }
}

class StudentInformationDetails extends StatelessWidget {
  const StudentInformationDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: StudentGrades(),
          );
        },
        childCount: 7,
      ),
    );
  }
}

class StudentGrades extends StatelessWidget {
  const StudentGrades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lightColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        title: TextField(decoration: InputDecoration(labelText: 'quiz1 grade')),
      ),
    );
  }
}
