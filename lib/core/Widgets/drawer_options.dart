import 'package:education_management_system/features/Courses/data/courses_grade_lists.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants.dart';
import '../../features/Students/presentation/view/students.dart';
import '../utils/Styles.dart';

// ignore: must_be_immutable
class DrawerOptions extends StatefulWidget {
  DrawerOptions({super.key, required this.icon, required this.optionName,required this.Location});
  String optionName;
  Icon icon;
  String Location;
  @override
  State<DrawerOptions> createState() => _DrawerOptionsState();
}

class _DrawerOptionsState extends State<DrawerOptions> {
  Color color=Colors.white;
  
  @override
  Widget build(BuildContext context) {
    String locate=widget.Location;
    return GestureDetector(
      onTap: () {
        if(locate=='students'){
           Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return StudentsPage(gradesList: WebCourse,);
                },
              ));
        }
        else{
        GoRouter.of(context).replace('/$locate');
        }
        // isLightMode=false;
        // setState(() {
          
        // });
      },
      child: Container(
        decoration: BoxDecoration(color: color),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: [
              Icon(
                widget.icon.icon,
                color: mainColor,
                size: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  widget.optionName,
                  style: Styles.style18.copyWith(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
