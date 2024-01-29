
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

List<String> options = ['Student', 'Professor'];

class indentifierRadioButton extends StatefulWidget {
  indentifierRadioButton({
    Key? key,
  }) : super(key: key);

  @override
  _IndentifierRadioButtonState createState() => _IndentifierRadioButtonState();
}

class _IndentifierRadioButtonState extends State<indentifierRadioButton> {
  String currentPosition = options[0];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width *.4, 
          child: ListTile(
            title: Text('Student'),
            leading: Radio(
              value: options[0],
              groupValue: currentPosition,
              onChanged: (value) {
                setState(() {
                  currentPosition = value as String;
                  isProfessor=false;
                });
              },
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width *.4, 
          child: ListTile(
            title: Text('Professor'),
            leading: Radio(
              value: options[1],
              groupValue: currentPosition,
              onChanged: (value) {
                setState(() {
                  currentPosition = value as String;
                  isProfessor=true;
                });
              },
            ),
          ),
        )
      ],
    );
  }
}
