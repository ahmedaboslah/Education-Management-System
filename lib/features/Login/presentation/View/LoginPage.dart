import 'package:education_management_system/core/utils/Styles.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'Widgets/LoginForm.dart';
import 'Widgets/TextField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          LoginForm(),
        ]),
      ),
    );
  }
}
