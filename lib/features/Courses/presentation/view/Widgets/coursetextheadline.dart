
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';

// ignore: must_be_immutable
class courseTextHeadline extends StatelessWidget {
  courseTextHeadline({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          text,
          style: Styles.style18,
        ),
      ),
    );
  }
}
