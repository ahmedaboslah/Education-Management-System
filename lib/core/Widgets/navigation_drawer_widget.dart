import 'package:education_management_system/constants.dart';
import 'package:education_management_system/features/Home/presentation/view/Widgets/draweroptions.dart';
import 'package:education_management_system/features/Login/presentation/View/Widgets/LoginButton.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.purple,
            child: Image.asset(stu),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        const Text('salah & tamer'),
        const SizedBox(
          height: 7,
        ),
        const Text('student'),
        const SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: LoginButton(
            buttontext: 'Veiw Profile',
            onpressed: () {},
          ),
        ),
        Expanded(
          child: Column(
            children: [
              drawroptions(name: 'Home', Icons: Icons.home),
              drawroptions(name: 'About', Icons: Icons.question_mark),
              drawroptions(name: 'Courses', Icons: Icons.school),
              drawroptions(name: 'Teachers', Icons: Icons.badge_sharp),
              drawroptions(name: 'Contact Us', Icons: Icons.headset_mic),
            ],
          ),
        )
      ]),
    );
  }
}
