import 'package:flutter/material.dart';

import '../../../../../core/Widgets/ActionButton.dart';

class ViewButton extends StatelessWidget {
  const ViewButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width  / 3,
            child: ActionButton(
                buttontext: 'View Playlist', onpressed: () {})),
                
        SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: ActionButton(
                buttontext: 'View Grade', onpressed: () {},buttoncolor: Colors.green.shade300,)),
      ],
    );
  }
}
