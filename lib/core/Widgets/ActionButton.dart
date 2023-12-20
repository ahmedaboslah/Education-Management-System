import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utils/Styles.dart';

// ignore: must_be_immutable
class ActionButton extends StatelessWidget {
  ActionButton({super.key, required this.buttontext, required this.onpressed,this.buttoncolor=mainColor });
  Function() onpressed;
  String buttontext;
  Color buttoncolor;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                
              ),
            ),
            backgroundColor:  MaterialStatePropertyAll(
              buttoncolor,
            ),
          ),
          onPressed: onpressed,
          child: Text(
            buttontext,
            style: Styles.style20
                .copyWith(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 18),
          )),
    );
  }
}
