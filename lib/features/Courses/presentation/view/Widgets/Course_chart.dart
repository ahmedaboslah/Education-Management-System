import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';
import 'chartdetails.dart';
import 'coursetextheadline.dart';

class courseDocument extends StatefulWidget {
  const courseDocument({super.key});

  @override
  State<courseDocument> createState() => _courseDocumentState();
}

class _courseDocumentState extends State<courseDocument> {
  int activeindex=-1;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Text(
                  'About the Course Headlines',
                  style: Styles.style20,
                ),
                SizedBox(
                  height: 15,
                ),
                courseTextHeadline(
                  text: 'Introduction to html and css',
                ),
                courseTextHeadline(
                  text: 'Introduction to javascript',
                ),
                courseTextHeadline(
                  text: 'Introduction to BootStrap',
                ),
                courseTextHeadline(
                  text: 'Introduction to JQuery',
                ),
                courseTextHeadline(
                  text: 'Introduction to MySQL',
                ),
                courseTextHeadline(
                  text: 'Introduction to Php',
                ),
                courseTextHeadline(
                  text: 'Introduction to react',
                ),
                courseTextHeadline(
                  text: 'Introduction to SASS',
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Row(
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
        )
      ],
    );
  }

  PieChartData GetChartData() {
    return PieChartData(
      pieTouchData:PieTouchData(
        enabled: true,
        touchCallback: (p0, piechartResponse) {
        activeindex=  piechartResponse!.touchedSection!.touchedSectionIndex;
        setState(() {
          
        });
        },
      ),
      sections: [
      PieChartSectionData(
        showTitle: false,
        radius:activeindex==0?45: 40,
        value: 10,
        color: Color(0xff208BC7),
      ),
       PieChartSectionData(
        showTitle: false,
        radius:activeindex==1?45: 40,
        value: 5,
        color: Color(0xff4DB7F2),
      ),
       PieChartSectionData(
        showTitle: false,
        radius:activeindex==2?45: 40,
        value: 50,
        color: Color(0xff064060),
      ),
       PieChartSectionData(
        showTitle: false,
        radius:activeindex==3?45: 40,
        value: 20,
        color: Color(0xffE2DECD),
      ),
       PieChartSectionData(
        showTitle: false,
        radius:activeindex==4?45: 40,
        value: 15,
        color: Colors.grey,
      ),
    ]);
  }
}