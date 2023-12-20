import 'package:education_management_system/constants.dart';
import 'package:education_management_system/core/utils/Styles.dart';
import 'package:flutter/material.dart';

import 'ActionButton.dart';
import 'drawer_options.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({super.key});

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
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
              'student',
              style: Styles.style18,
            ),
            const SizedBox(height: 10,),
            ActionButton(
              buttontext: 'View Profile',
              onpressed: () {
                isLightMode=false;
                setState(() {
                  
                });
              },
            ),
            const SizedBox(height: 20,),
            DrawerOptions(
              icon: Icon(Icons.home),
              optionName: 'home',
              Location: 'HomePage',
            ),
            DrawerOptions(
              icon: Icon(Icons.question_mark),
              optionName: 'about',
              Location: 'AboutPage',
            ),
            DrawerOptions(
              icon: Icon(Icons.school),
              optionName: 'courses',
              Location: 'CoursesPage',
            ),
            DrawerOptions(
              icon: Icon(Icons.badge),
              optionName: 'professor ',
              Location: 'ProfessorPage',
            ),
            DrawerOptions(
              icon: Icon(Icons.headset_mic),
              optionName: 'contact us',
              Location: 'ContactUs',
            ),
          ]),
        ),
      ),
    );
  }
}

