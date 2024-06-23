import 'dart:convert';

import 'package:education_management_system/constants.dart';
import 'package:education_management_system/core/Widgets/ActionButton.dart';
import 'package:education_management_system/core/Widgets/AppBar.dart';
import 'package:education_management_system/core/utils/Api_server.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../../../../../core/Widgets/StudentAvatar.dart';
import '../../../../../core/utils/Styles.dart';
import 'student_grades.dart';

class StudentInformation extends StatefulWidget {
   StudentInformation({Key? key, required this.gradeslist, required this.id, required this.name})
      : super(key: key);
  final List gradeslist;
   String id,name;

  @override
  State<StudentInformation> createState() => _StudentInformationState();
}

class _StudentInformationState extends State<StudentInformation> {
  TextEditingController quiz1 = TextEditingController();
  TextEditingController quiz2 = TextEditingController();
  TextEditingController assignment1 = TextEditingController();
  TextEditingController assignment2 = TextEditingController();
  TextEditingController midterm = TextEditingController();
  TextEditingController finalexam = TextEditingController();
  TextEditingController project = TextEditingController();
  double total=0;
  
  Future<void> insertGrades() async {
    List data=await Api().get(endPoint: 'GetGrades');
    int index=data.length;
    if (quiz1.text != '' ||
        quiz2.text != '' ||
        assignment1.text != '' ||
        assignment2.text != '' ||
        midterm.text != '' ||
        finalexam.text != '' ||
        project.text != '') {
      try {
         double q1 = double.tryParse(quiz1.text) ?? 0;
    double q2 = double.tryParse(quiz2.text) ?? 0;
    double a1 = double.tryParse(assignment1.text) ?? 0;
    double a2 = double.tryParse(assignment2.text) ?? 0;
    double mid = double.tryParse(midterm.text) ?? 0;
    double finalExam = double.tryParse(finalexam.text) ?? 0;
    double proj = double.tryParse(project.text) ?? 0;

    setState(() {
      total = q1 + q2 + a1 + a2 + mid + finalExam + proj;
    });

        var response = await http.post(
            Uri.parse('http://192.168.1.7/api_education/user/InsertGrades.php'),
            body: {
              'id':'$index',
              'UserID':widget.id,
              'Quiz1': quiz1.text,
              'Quiz2': quiz2.text,
              'Assignment1': assignment1.text,
              'Assignment2': assignment2.text,
              'Midterm': midterm.text,
              'final': finalexam.text,
              'Project': project.text,
              'Totalgrades':'$total'
            });
            
        var data = jsonDecode(response.body);
        if (data['success'] == 'true') {
          print('data insert');
          setState(() {
            
          });
        } else {
          print('problem');
          
        }
      } catch (e) {
        print(e);
      }
    } else {
      print('error');
    }
  }

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
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Student Profile',
                      style:
                          Styles.style22.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Divider(
                      height: 30,
                      thickness: 2,
                    ),
                     StudentAvatar(name: widget.name,)
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: StudentGrades(
                      labeltext: 'Quiz1',
                      controller: quiz1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: StudentGrades(
                      labeltext: 'Quiz2',
                      controller: quiz2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: StudentGrades(
                      labeltext: 'Assignment1',
                      controller: assignment1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: StudentGrades(
                      labeltext: 'Assignment2',
                      controller: assignment2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: StudentGrades(
                      labeltext: 'Midterm',
                      controller: midterm,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: StudentGrades(
                      labeltext: 'Final',
                      controller: finalexam,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: StudentGrades(
                      labeltext: 'Project',
                      controller: project,
                    ),
                  ),
                  ActionButton(
                      buttontext: 'Submit',
                      onpressed: () {
                        insertGrades();
                      })
                ],
              ),
            ),
            // StudentInformationDetails(nameslist: gradeslist),
          ],
        ),
      ),
    );
  }
}
