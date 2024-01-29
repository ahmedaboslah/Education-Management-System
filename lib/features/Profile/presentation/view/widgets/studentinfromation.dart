import 'package:flutter/material.dart';


import '../../../../../core/Widgets/StudentAvatar.dart';
import 'studentdetails.dart';

class StudentInformation extends StatelessWidget {
  const StudentInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          StudentAvatar(),
          SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 7,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: studentDetails(),
                ); // Assuming StudentDetails is a widget
              },
            ),
          ),
        ],
      ),
    );
  }
}
