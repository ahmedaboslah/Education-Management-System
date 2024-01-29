
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class studentDetails extends StatelessWidget {
  const studentDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
      color: lightColor,
      borderRadius: BorderRadius.circular(8),
    ),
    child:ListTile(leading: Text('Id'),title: Text('000000'),) ,
    );
  }
}
