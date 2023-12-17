import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/Styles.dart';

class LoginButton extends StatelessWidget {
   LoginButton({
    super.key,required this.buttontext,required this.onpressed
  });
  Function() onpressed;
  String buttontext;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      child: ElevatedButton(
        
          style:  ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                  mainColor)),
          onPressed: onpressed,
          child:  Text(buttontext,style:Styles.style20.copyWith(color: Colors.white,fontWeight: FontWeight.w500) ,)),
    );
  }
}