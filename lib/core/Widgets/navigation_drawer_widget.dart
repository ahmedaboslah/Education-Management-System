import 'package:education_management_system/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'ActionButton.dart';
import 'StudentAvatar.dart';
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
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            StudentAvatar(name: name,text: 'Professor',),
            const SizedBox(height: 10,),
            ActionButton(
              buttontext: 'View Profile',
              onpressed: () {
                GoRouter.of(context).replace('/Profile');
              },
            ),
            const SizedBox(height: 20,),
            SafeArea(
              child: DrawerOptions(
                icon: Icon(Icons.home),
                optionName: 'home',
                Location: 'HomePage',
              ),
            ),
            SafeArea(
              child:isProfessor?Container(): DrawerOptions(
                icon: Icon(Icons.question_mark),
                optionName: 'about',
                Location: 'AboutPage',
              ),
            ),
            SafeArea(
              child: DrawerOptions(
                icon: Icon(Icons.school),
                optionName: 'courses',
                Location:isProfessor?'professor_course_page': 'CoursesPage',
              ),
            ),
            SafeArea(
              child: DrawerOptions(
                icon: Icon(Icons.badge),
                optionName:isProfessor?'Student': 'professor ',
                Location:isProfessor?'students': 'ProfessorPage',
              ),
            ),
            SafeArea(
              child:isProfessor?Container(): DrawerOptions(
                icon: Icon(Icons.headset_mic),
                optionName: 'contact us',
                Location: 'ContactUs',
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
