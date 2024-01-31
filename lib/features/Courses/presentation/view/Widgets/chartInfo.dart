
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';

class chartInfo extends StatelessWidget {
   chartInfo({super.key,required this.text,required this.value,required this.color});
  String text;
  String value;
  Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color:color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(text,style: Styles.style18.copyWith(color: color),),
      trailing: Text(value,style: Styles.style18.copyWith(color: color),),
    );
  }
}
