
import 'package:flutter/material.dart';

class courseImage extends StatelessWidget {
  const courseImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/weblogo.png',
          ),
        ),
      ),
    );
  }
}

