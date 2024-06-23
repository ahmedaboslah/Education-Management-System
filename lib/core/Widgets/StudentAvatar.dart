
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utils/Styles.dart';


class StudentAvatar extends StatelessWidget {
   StudentAvatar({
    super.key,this.text='student',required this.name
  });
  String text,name;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CircleAvatar(
      radius: 40,
      backgroundColor: Colors.red,
      child: Image.asset(imageAvatar),
    ),
    const SizedBox(height: 10,),
    Text(
     name?? 'ahmed salah',
      style: Styles.style22.copyWith(fontWeight: FontWeight.w500),
    ),
    const SizedBox(height: 10,),
    name!='Ahmed'?
    Text(
      text=='student' ? 
     isProfessor?name!=null?'Student':'Professor': text:isProfessor?'Professor':'Student',
      style: Styles.style18,
    ):Text(text,style: Styles.style18,),
    ],);
  }
}

