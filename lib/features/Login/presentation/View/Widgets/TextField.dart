import 'package:education_management_system/constants.dart';
import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
   textfield({super.key,required this.hintText});
  String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          enabled: true,
          fillColor: lightColor,
          filled: true,
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide.none),
        ));
  }

  }
