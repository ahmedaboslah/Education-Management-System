
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utils/Styles.dart';

// ignore: must_be_immutable
class StudentAvatar extends StatelessWidget {
   StudentAvatar({
    super.key,this.text='student'
  });
 String? text;
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
      'shaikh anas',
      style: Styles.style22.copyWith(fontWeight: FontWeight.w500),
    ),
    const SizedBox(height: 10,),
    Text(
     isProfessor?'Professor': text!,
      style: Styles.style18,
    ),
    ],);
  }
}

