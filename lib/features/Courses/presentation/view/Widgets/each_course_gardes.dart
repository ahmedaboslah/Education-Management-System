import 'package:education_management_system/features/Courses/data/courses_grade_lists.dart';
import 'package:education_management_system/features/Courses/manager/CourseSkillsGrades/cubit/course_skills_cubit.dart';
import 'package:education_management_system/features/Courses/presentation/view/Widgets/Grade_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/Styles.dart';

class EachCourseGrades extends StatefulWidget {
  const EachCourseGrades({super.key});

  @override
  State<EachCourseGrades> createState() => _EachCourseGradesState();
}

class _EachCourseGradesState extends State<EachCourseGrades> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      const SliverToBoxAdapter(
        child: Center(
          child: Text(
            'Your Grades',
            style: Styles.style20,
          ),
        ),
      ),
      SliverList.builder(
        itemCount: WebSkills.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: BlocBuilder<CourseSkillsCubit, CourseSkillsState>(
              builder: (context, state) {
                if(state is CourseSkillsSuccess){
                return GradesDetails(quiznumber: WebSkills[index],skillGrade: state.skillsGrades[index],why: state.skillsWhy[index],type:state.skillsType[index]);
                }
                else{
                  return Container();
                }
              },
            ),
          );
        },
      ),
    ]);
  }
}
