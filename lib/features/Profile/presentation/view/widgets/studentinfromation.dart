import 'package:education_management_system/constants.dart';
import 'package:education_management_system/core/Widgets/ActionButton.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../../../../../core/Widgets/StudentAvatar.dart';
import 'studentdetails.dart';

class StudentInformation extends StatefulWidget {
   StudentInformation({
    Key? key,
  }) : super(key: key);

  @override
  State<StudentInformation> createState() => _StudentInformationState();
}

class _StudentInformationState extends State<StudentInformation> {
final List<String> studentandprofessorinfonames=['Name','Id','Nationality','National Id','Phone Number','Email'];

final List<String> studentandprofessorinfon=[name,id,'Egyption','0000000000','+200000000',Email];

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          StudentAvatar(name: name,text: isProfessor?'Professor':'student',),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: ActionButton(buttontext: 'LogOut',onpressed: () {
              isProfessor=false;
              setState(() {
                
              });
              GoRouter.of(context).push('/LoginPage');
            },buttoncolor: Colors.red),
          ),
          SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: studentandprofessorinfonames.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: studentDetails(leading: studentandprofessorinfonames[index],title: studentandprofessorinfon[index]),
                ); 
              },
            ),
          ),
        ],
      ),
    );
  }
}
