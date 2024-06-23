import 'package:education_management_system/constants.dart';
import 'package:education_management_system/core/Widgets/ActionButton.dart';
import 'package:education_management_system/core/Widgets/AppBar.dart';
import 'package:education_management_system/core/utils/Api_server.dart';
import 'package:education_management_system/features/Courses/data/courses_grade_lists.dart';
import 'package:education_management_system/features/Courses/presentation/view/Widgets/student_information_details.dart';
import 'package:flutter/material.dart';
import '../../../../../core/Widgets/StudentAvatar.dart';
import '../../../../../core/utils/Styles.dart';
import 'students_skills_gradeing.dart';

class EachStudentInformation extends StatefulWidget {
  const EachStudentInformation({Key? key, this.id, this.nameN})
      : super(key: key);
  final String? id, nameN;

  @override
  State<EachStudentInformation> createState() => _EachStudentInformationState();
}

class _EachStudentInformationState extends State<EachStudentInformation> {
  String? imageName;

  Future<void> getAnswer()async{
    try {
      List data = await Api().get(endPoint: 'GetAnswerImage');
      imageName = data[data.length-1]['image'];
      setState(() {
        
      });
      print(imageName);
  }catch (e){
    print(e);
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
                      'Your Student Profile',
                      style:
                          Styles.style22.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Divider(
                      height: 30,
                      thickness: 2,
                    ),
                    StudentAvatar(
                      name: widget.nameN!,
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  ActionButton(
                    buttontext: 'Upload Answer',
                    onpressed: () {
                      getAnswer();
                      setState(() {
                        
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  imageName!=null?Image.network("http://192.168.1.7/api_education/user/"+imageName!):SizedBox(),
                ],
              ),
            ),
            SliverList.builder(
              itemCount: WebSkills.length,
              itemBuilder: (context, index) {
                return StudentSkilsGrades(
                  labeltext: WebSkills[index],
                  id: widget.id!,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
