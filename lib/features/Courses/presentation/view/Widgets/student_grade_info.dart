
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/Styles.dart';
import '../../../manager/CourseGradeCubit/course_grade_cubit.dart';
import 'Grade_details.dart';


class StudentGrade extends StatelessWidget {
  StudentGrade({super.key});
   
  final List<String> coursequizes = [
    'Quiz1',
    'Quiz2',
    'Assignment1',
    'Assignment2',
    'Midterm',
    'Final',
    'Project',
    'Total Grades'
  ];
  

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Center(
            child: Text(
              'Your Grades',
              style: Styles.style20,
            ),
          ),
        ),
        SliverList.builder(
          itemCount: coursequizes.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: BlocBuilder<CourseGradeCubit, CourseGradeState>(
                builder: (context, state) {
                 if(state is CourseGradeSuccess){
                   return GradesDetails(quiznumber: coursequizes[index],grade: state.grades[index],);
                 }else{
                  return Container();
                 }
                },
              ),
            );
          },
        ),
        // const SliverToBoxAdapter(
        //   child: Center(
        //     child: Text(
        //       'Your Skills Grades',
        //       style: Styles.style20,
        //     ),
        //   ),
        // ),
        // SliverToBoxAdapter(
        //   child: Row(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Expanded(
        //         child: Container(height: 200, child: PieChart(GetChartData())),
        //       ),
        //       Expanded(
        //           child: ChartDetails(
        //         chartNames: ChartNames(
        //             Name1: 'Problem Solving',
        //             Name2: 'Team Work',
        //             Name3: 'Programming',
        //             Name4: 'Testing',
        //             Name5: 'Data Analyzing'),
        //       ))
        //     ],
        //   ),
        // ),
        // SliverList.builder(
        //     itemCount: Skillsgrade.length,
        //     itemBuilder: (context, index) {
        //       return Padding(
        //         padding: const EdgeInsets.all(10),
        //         child: GradesDetails(quiznumber: Skillsgrade[index]),
        //       );
        //     })
      ],
    );
  }

  PieChartData GetChartData() {
    return PieChartData(sections: [
      PieChartSectionData(
        showTitle: false,
        radius: 40,
        value: 10,
        color: const Color(0xff208BC7),
      ),
      PieChartSectionData(
        showTitle: false,
        radius: 40,
        value: 5,
        color: const Color(0xff4DB7F2),
      ),
      PieChartSectionData(
        showTitle: false,
        radius: 40,
        value: 50,
        color: const Color(0xff064060),
      ),
      PieChartSectionData(
        showTitle: false,
        radius: 40,
        value: 20,
        color: const Color(0xffE2DECD),
      ),
      PieChartSectionData(
        showTitle: false,
        radius: 40,
        value: 15,
        color: Colors.grey,
      ),
    ]);
  }
}
