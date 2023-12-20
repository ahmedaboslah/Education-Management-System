import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants.dart';
import '../utils/Styles.dart';

class DrawerOptions extends StatefulWidget {
  DrawerOptions({super.key, required this.icon, required this.optionName,required this.Location});
  String optionName;
  Icon icon;
  String Location;
  @override
  State<DrawerOptions> createState() => _DrawerOptionsState();
}

class _DrawerOptionsState extends State<DrawerOptions> {
  Color color=Colors.white;
  
  @override
  Widget build(BuildContext context) {
    String locate=widget.Location;
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/$locate');
        color=const Color.fromARGB(255, 216, 215, 215);
        setState(() {
          
        });
      },
      child: Container(
        decoration: BoxDecoration(color: color),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: [
              Icon(
                widget.icon.icon,
                color: mainColor,
                size: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  widget.optionName,
                  style: Styles.style18.copyWith(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
