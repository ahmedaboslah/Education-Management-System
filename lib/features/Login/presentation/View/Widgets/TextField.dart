import 'package:education_management_system/constants.dart';
import 'package:education_management_system/core/utils/Api_server.dart';
import 'package:flutter/material.dart';

class textfield extends StatefulWidget {
  const textfield(
      {super.key,
      required this.hintText,
      required this.onChanged,
      required this.obsecureText});
  final String hintText;
  final bool obsecureText;
  final Function(String)? onChanged;

  @override
  State<textfield> createState() => _textfieldState();
}

int? index;

class _textfieldState extends State<textfield> {
  void initState() {
    GetUserData();
    super.initState();
  }

  String? Id, Password;
  List? data;

  bool found = false;
  Future<void> GetUserData() async {
    data = await Api().get(endPoint: 'Login');
    Id = data![2]['id'];
    Password = data![2]['password'];
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: widget.obsecureText,
        onChanged: widget.onChanged,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please ${widget.hintText} correctly';
          } else if (widget.obsecureText == false) {
            for (int i = 0; i < data!.length; i = i + 1) {
              if (value == data![i]['id']) {
                id = value;
                Email = data![i]['email'];
                name = data![i]['name'];

                index = i;
                print(index);
                found = true;
                setState(() {});
              }
            }
            if (found != true) {
              return 'Please ${widget.hintText}';
            }
          } else if (widget.obsecureText == true) {
            if (value != data![index!]['password']) {
              return 'Please ${widget.hintText} correctly';
            } else {
              print(index);
            }
          }
        },
        decoration: InputDecoration(
          enabled: true,
          fillColor: lightColor,
          filled: true,
          hintText: widget.hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
        ));
  }
}
