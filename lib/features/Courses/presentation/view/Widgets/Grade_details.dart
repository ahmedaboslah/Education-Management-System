
import 'package:education_management_system/features/Courses/data/courses_grade_lists.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';

class GradesDetails extends StatelessWidget {
  const GradesDetails({
    super.key, required this.quiznumber,  this.grade,  this.skillGrade, this.why,this.type
  });
final String? quiznumber,grade;
final String? skillGrade,why,type; 
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              ListTile(
                leading:type!=null? Text(
                  '${type}: ',
                  style: Styles.style20,
                ):Text('$quiznumber :',style: Styles.style20,),
                title:grade==null? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 140,
                      margin: EdgeInsets.only(right: 16,top: 10,bottom: 10),
                      padding: EdgeInsets.symmetric(horizontal:16,vertical: 12),
                      decoration: BoxDecoration(
                        color:skillGrade=='Excellent'?Colors.green:skillGrade=='good'?Color.fromARGB(255, 162, 238, 164):skillGrade=='Fair'?Color.fromARGB(255, 247, 234, 125):Colors.amber,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Center(
                        child: Text(
                          grade??'$skillGrade',
                          style: Styles.style20
                              .copyWith(fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ):Text(
                        grade??'$skillGrade',
                        style: Styles.style20
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
              ),
              grade==null? Padding(
                padding: const EdgeInsets.only(left: 12,bottom: 6),
                child: Text('Why: $why!',style: Styles.style18.copyWith(color: Colors.green),),
              ):SizedBox()
            ],
          ),
        )
      ],
    );
  }
}
