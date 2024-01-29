import 'package:flutter/material.dart';

import '../../../../../core/Widgets/ActionButton.dart';

// ignore: must_be_immutable
class ViewButton extends StatelessWidget {
  ViewButton({super.key, this.onpressed, required this.viewgrade,this.btntext='View Playlist'});
  Function()? onpressed;
  bool viewgrade;
  String btntext;
  @override
  Widget build(BuildContext context) {
    return viewgrade
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: ActionButton(
                      buttontext: 'View Playlist', onpressed: onpressed!)),
              SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: ActionButton(
                    buttontext: 'View Grade',
                    onpressed: () {},
                    buttoncolor: Colors.green.shade300,
                  )),
            ],
          )
        : Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 200),
                child: SizedBox(
                    width: double.infinity,
                    child: ActionButton(
                        buttontext: btntext, onpressed: onpressed!)),
              ),
            ),
          ]);
  }
}
