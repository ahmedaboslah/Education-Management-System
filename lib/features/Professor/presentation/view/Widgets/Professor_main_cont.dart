
import 'package:flutter/material.dart';

import 'professor_info.dart';

class professorMainContainer extends StatelessWidget {
  const professorMainContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: professorInformation(),
    );
  }
}
