
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';
import 'Professor_main_cont.dart';

class ProfessorViewBody extends StatelessWidget {
  const ProfessorViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Professors',
            style: Styles.style22.copyWith(fontWeight: FontWeight.bold),
          ),
          const Divider(
            height: 30,
            thickness: 2,
          ),
          professorMainContainer(),
        ],
      ),
    );
  }
}
