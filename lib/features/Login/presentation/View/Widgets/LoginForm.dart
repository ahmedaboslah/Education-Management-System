import 'package:education_management_system/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/Styles.dart';
import 'LoginButton.dart';
import 'TextField.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(child: Text('Login Now',style: Styles.style20,)),
                   Text(
                    'your id *',
                    style: Styles.style18,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  textfield(hintText: 'enter your id'),
                  const SizedBox(
                    height: 32,
                  ),
                   Text(
                    'your password *',
                    style: Styles.style18,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  textfield(hintText: 'please enter your password'),
                  const SizedBox(
                    height: 32,
                  ),
                  LoginButton(buttontext: "Login",onpressed: (){
                    GoRouter.of(context).push('/HomePage');
                  }),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          );
  }
}

