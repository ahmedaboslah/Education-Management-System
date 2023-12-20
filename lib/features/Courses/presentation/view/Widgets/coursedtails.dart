
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';

class coursedetails extends StatelessWidget {
  const coursedetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/pic-1.jpg',
          height: 50,
        ),
        const SizedBox(
          width: 18,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'john deo',
              style: Styles.style20.copyWith(
                  fontWeight: FontWeight.w600, fontSize: 17),
            ),
            Text(
              '21-10-2022',
              style: Styles.style18.copyWith(fontSize: 13),
            )
          ],
        )
      ],
    );
  }
}
