
import 'package:education_management_system/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../core/Widgets/StudentAvatar.dart';

class profileavatar extends StatelessWidget {
  const profileavatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: StudentAvatar(
          text: 'Professor@gmail.com',name: 'Ahmed',
        ),
      ),
    );
  }
}
