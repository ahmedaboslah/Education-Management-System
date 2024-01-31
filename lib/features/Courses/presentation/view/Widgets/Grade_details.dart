
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';

class GradesDetails extends StatelessWidget {
  const GradesDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)),
          child: ListTile(
            leading: Text(
              'Quiz1: ',
              style: Styles.style20,
            ),
            title: Text(
              '8',
              style: Styles.style20
                  .copyWith(fontWeight: FontWeight.normal),
            ),
          ),
        )
      ],
    );
  }
}
