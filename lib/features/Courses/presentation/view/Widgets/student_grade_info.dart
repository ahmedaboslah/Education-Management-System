import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';
import 'Grade_details.dart';
import 'chartdetails.dart';

class StudentGrade extends StatelessWidget {
  const StudentGrade({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Center(
            child: Text(
              'Your Grades',
              style: Styles.style20,
            ),
          ),
        ),
        SliverList.builder(
          itemCount: 7,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(10),
              child: GradesDetails(),
            );
          },
        ),
        SliverToBoxAdapter(
          child: Center(
            child: Text(
              'Your Skills Grades',
              style: Styles.style20,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child:Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  child: PieChart(GetChartData())),
              ),
              Expanded(child: ChartDetails())
            ],
          ),
        ),
        SliverList.builder(
          itemCount: 7,
          itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: GradesDetails(),
          );
        })
      ],
    );
  }
  
  PieChartData GetChartData() {
    return PieChartData(
      sections: [
      PieChartSectionData(
        showTitle: false,
        radius: 40,
        value: 10,
        color: Color(0xff208BC7),
      ),
       PieChartSectionData(
        showTitle: false,
        radius: 40,
        value: 5,
        color: Color(0xff4DB7F2),
      ),
       PieChartSectionData(
        showTitle: false,
        radius: 40,
        value: 50,
        color: Color(0xff064060),
      ),
       PieChartSectionData(
        showTitle: false,
        radius:40,
        value: 20,
        color: Color(0xffE2DECD),
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
