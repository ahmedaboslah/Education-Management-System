
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';
import 'studentinfromation.dart';

class ProfileViewPage extends StatelessWidget {
  const ProfileViewPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Profile',
              style: Styles.style22.copyWith(fontWeight: FontWeight.bold),
            ),
            const Divider(
              height: 30,
              thickness: 2,
            ),
            StudentInformation(),
          ],
        ),
      ),
    );
  }
}
