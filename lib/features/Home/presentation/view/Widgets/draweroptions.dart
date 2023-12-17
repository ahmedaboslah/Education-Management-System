import 'package:education_management_system/constants.dart';
import 'package:flutter/material.dart';

class drawroptions extends StatelessWidget {
  drawroptions({super.key, required this.name, required this.Icons});
  IconData Icons;
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        children: [
          Icon(
            Icons,
            color: mainColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(name),
          )
        ],
      ),
    ));
  }
}
