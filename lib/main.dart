import 'package:education_management_system/constants.dart';
import 'package:education_management_system/core/utils/Approuter.dart';
import 'package:education_management_system/features/Courses/manager/CourseSkillsGrades/cubit/course_skills_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/Courses/manager/CourseGradeCubit/course_grade_cubit.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // var resp=Api().get();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
         BlocProvider(
          create: (context) => CourseGradeCubit()..gradesList(),
        ),
        BlocProvider(
          create: (context) => CourseSkillsCubit()..SkillsGrades(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor:isLightMode? lightColor : darkColor),
    
      ),
    );
  }
}