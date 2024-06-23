import 'dart:convert';
import 'package:education_management_system/core/Widgets/ActionButton.dart';
import 'package:http/http.dart' as http;
import 'package:education_management_system/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class StudentSkilsGrades extends StatefulWidget {
  const StudentSkilsGrades(
      {Key? key, required this.labeltext, required this.id})
      : super(key: key);
  final String labeltext, id;

  @override
  State<StudentSkilsGrades> createState() => _StudentSkilsGradesState();
}

class _StudentSkilsGradesState extends State<StudentSkilsGrades> {
  String defaultvalue = 'None';
  var items = [
    'None',
    'Excellent',
    'Good',
    'Fair',
    'Poor',
  ];
  Future<void> insertGrades() async {
    if (defaultvalue != 'None') {
      try {
        var response = await http.post(
            Uri.parse('http://192.168.1.7/api_education/user/InsertSkills.php'),
            body: {
              'id': widget.id,
              'grades': defaultvalue,
              'why': defaultvalue == 'Excellent'
                  ? 'There are no errors in the HTML, CSS or other coding on the sites as found by me or an online validator'
                  : defaultvalue == 'Good'
                      ? 'There are 1-3 coding errors on the site as found by me or an online validator'
                      : defaultvalue == 'Fair'
                          ? 'There are 4-5 coding errors on the site as found by me or an online validator'
                          : 'There are more than 6 coding errors on the site as found by me or online validator',
              'Type': widget.labeltext
            });
        var data = jsonDecode(response.body);
        if (data['success'] == 'true') {
          print('data insert');
          setState(() {});
        } else {
          print('problem');
        }
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, top: 16, left: 25),
      child: Container(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: ListTile(
          title: Text('${widget.labeltext} :'),
          trailing: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: defaultvalue == 'Excellent'
                    ? Colors.green
                    : defaultvalue == 'Good'
                        ? Color.fromARGB(255, 162, 238, 164)
                        : defaultvalue == 'Fair'
                            ? const Color.fromARGB(255, 247, 234, 125)
                            : defaultvalue == 'Poor'
                                ? Colors.amber
                                : Colors.white),
            width: MediaQuery.of(context).size.width * 0.24,
            child: DropdownButton(
              onTap: () {
                insertGrades();
              },
              underline: SizedBox(),
              alignment: Alignment.bottomCenter,
              borderRadius: BorderRadius.circular(8),
              value: defaultvalue,
              items: items.map((String item) {
                return DropdownMenuItem(child: Text('  $item'), value: item);
              }).toList(),
              onChanged: (String? value) {
                
                setState(() {
                  defaultvalue = value!;
                   insertGrades();
                });
               
              },
            ),
          ),
        ),
      ),
    );
  }
}
