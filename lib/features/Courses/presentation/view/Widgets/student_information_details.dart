import 'package:education_management_system/features/Students/presentation/view/widgets/student_grades.dart';
import 'package:flutter/material.dart';

class StudentInformationDetails extends StatelessWidget {
  StudentInformationDetails({Key? key, required this.nameslist})
      : super(key: key);
  final List nameslist;
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: StudentGrades(
                labeltext: nameslist[index], controller: controller),
          );
        },
        childCount: nameslist.length,
      ),
    );
  }
}
