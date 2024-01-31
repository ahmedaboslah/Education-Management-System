import 'package:education_management_system/core/utils/Styles.dart';
import 'package:flutter/material.dart';

import 'chartInfo.dart';

class ChartDetails extends StatelessWidget {
  const ChartDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        chartInfo(color:Color(0xff208BC7) ,text: 'Quizes',value: '10%',),
        chartInfo(color: Color(0xff4DB7F2),text: 'Assignment',value:'5%' ,),
        chartInfo(color: Color(0xff064060),text: 'Final',value: '50%',),
        chartInfo(color: Color.fromARGB(255, 172, 162, 132),text: 'Midterm',value: '20%',),
        chartInfo(color: Colors.grey,text: 'Project',value: '15%',),
      ],
    );
  }
}
