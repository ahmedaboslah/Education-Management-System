
import 'package:education_management_system/core/utils/Api_server.dart';
import 'package:education_management_system/features/Students/presentation/model/user_model.dart';
import 'package:flutter/material.dart';

import 'professors_students.dart';

class StudentsindividualDetails extends StatefulWidget {
  const StudentsindividualDetails({
    super.key, required this.gradesList,
  });
final List gradesList;

  @override
  State<StudentsindividualDetails> createState() => _StudentsindividualDetailsState();
}

class _StudentsindividualDetailsState extends State<StudentsindividualDetails> {
   void initState() {
    GetUserData();
    super.initState();
  }
  List data=[];
  List<UserModedl> userModel=[];
  Future<void> GetUserData() async {
     data = await Api().get(endPoint: 'Students');
     for(var i in data){
      UserModedl user_model=UserModedl(name: i['name'], id: i['id']);
      userModel.add(user_model);
     }
     
     setState(() {
       
     });
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder:(context, index) =>  Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProfessorStudents(gradesList: widget.gradesList, UserData: userModel[index],),
            ),
          ),
        ),
      ),
    );
  }
}