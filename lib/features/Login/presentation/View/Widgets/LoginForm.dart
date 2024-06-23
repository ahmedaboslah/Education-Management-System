
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/Styles.dart';
import '../../../../../core/Widgets/ActionButton.dart';
import 'TextField.dart';
import 'radio_button.dart';

class LoginForm extends StatelessWidget {
   LoginForm({super.key,});

  final GlobalKey<FormState> formkey = GlobalKey();

 @override

  @override
  Widget build(BuildContext context) {
    String id,password;
    return Form(
      key: formkey,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                  child: Text(
                'Login Now',
                style: Styles.style20,
              )),
              Text(
                'your id *',
                style: Styles.style18,
              ),
              const SizedBox(
                height: 5,
              ),
              textfield(
                obsecureText: false,
                hintText: 'enter your id',
                onChanged: (data) {
                  id=data;
                },
              ),
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
              textfield(obsecureText: true,hintText: 'please enter your password',onChanged: (data) {
                password=data;
              },),
              const SizedBox(
                height: 32,
              ),
              indentifierRadioButton(),
              ActionButton(
                  buttontext: "Login",
                  onpressed: () {
                    if (formkey.currentState!.validate()) {
                      GoRouter.of(context).push('/HomePage');
                    }
                  }),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
