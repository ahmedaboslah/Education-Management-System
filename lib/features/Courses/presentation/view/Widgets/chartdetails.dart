
import 'package:education_management_system/features/Courses/data/bie_chart_list_names.dart';
import 'package:flutter/material.dart';

import 'chartInfo.dart';

class ChartDetails extends StatelessWidget {
  const ChartDetails({super.key,required this.chartNames});
  final ChartNames chartNames;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        chartInfo(color:Color(0xff208BC7) ,text: chartNames.Name1,value: '10%',),
        chartInfo(color: Color(0xff4DB7F2),text: chartNames.Name2,value:'5%' ,),
        chartInfo(color: Color(0xff064060),text: chartNames.Name3,value: '50%',),
        chartInfo(color: Color.fromARGB(255, 172, 162, 132),text: chartNames.Name4,value: '20%',),
        chartInfo(color: Colors.grey,text: chartNames.Name5,value: '15%',),
      ],
    );
  }
}
