
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/Styles.dart';

class AboutPageDetailsContainer extends StatelessWidget {
  const AboutPageDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Icon(Icons.school,color: mainColor,size: 50,),
          const SizedBox(width: 50,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('+10K',style: Styles.style22.copyWith(fontWeight: FontWeight.w700),),
            const SizedBox(height: 5,),
            Text('online course',style: Styles.style18,)
          ],)
        ],
      ),
    );
  }
}
