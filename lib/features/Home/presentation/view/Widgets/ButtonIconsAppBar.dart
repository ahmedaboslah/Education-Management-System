import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class ButtonIcon extends StatefulWidget {
   ButtonIcon({
    super.key,
    required this.icon,
    required this.onpressed
  });
  Function() onpressed;
Icon icon;

  @override
  State<ButtonIcon> createState() => _ButtonIconState();
}

class _ButtonIconState extends State<ButtonIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: lightColor
      ),
      child: IconButton(onPressed: widget.onpressed, icon:widget.icon),
    );
  }
}