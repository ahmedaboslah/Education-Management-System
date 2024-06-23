import 'package:bloc/bloc.dart';
import 'package:education_management_system/constants.dart';
import 'package:education_management_system/core/utils/Api_server.dart';
import 'package:meta/meta.dart';

part 'course_grade_state.dart';

class CourseGradeCubit extends Cubit<CourseGradeState> {
  CourseGradeCubit() : super(CourseGradeInitial());
  Api api = Api();
  Future<void> gradesList() async {
    emit(CourseGradeLoading());
    try {
      List data = await api.get(endPoint: 'GetGrades');
      List grades = [];
      
      for (int i = data.length-1; i >= 0; i = i - 1) {
        if (id == data[i]['UserID']) {
          String quiz1 = data[i]['Quiz1'];
          String quiz2 = data[i]['Quiz2'];
          String assignment1 = data[i]['Assignment1'];
          String assignment2 = data[i]['Assignment2'];
          String midterm = data[i]['Midterm'];
          String finalexam = data[i]['final'];
          String project = data[i]['Project'];
          String total = data[i]['Totalgrades'];
          grades.add(quiz1);
          grades.add(quiz2);
          grades.add(assignment1);
          grades.add(assignment2);
          grades.add(midterm);
          grades.add(finalexam);
          grades.add(project);
          grades.add(total);
        }
      }

      emit(CourseGradeSuccess(grades: grades));
    } catch (e) {
      emit(CourseGradeFailure(errmessage: e.toString()));
    }
  }
}
/*
 List data = [];
    if (response.statusCode == 200) {
      data = json.decode(response.body);
    }

    print(data);
    List<CourseModel> studentgrade = [];
    for (var grade in data) {
      CourseModel courseModel = CourseModel(
          quiz: grade['Quiz'],
          totalgrade: grade['totalgrade'],
          finalexam: grade['FINLA'],
          mid: grade['MIDTERM'],
          project: grade['PROJECT']);
          studentgrade.add(courseModel);
    }
  print(studentgrade);
*/
// List data = [];

      // List<CourseModel> studentgrade = [];
      // for (var grade in jsondata) {
      //   CourseModel courseModel = CourseModel(
      //       quiz: grade['Quiz'],
      //       totalgrade: grade['totalgrade'],
      //       finalexam: grade['FINLA'],
      //       mid: grade['MIDTERM'],
      //       project: grade['PROJECT']);
      //   studentgrade.add(courseModel);
      // }
      // data.add(studentgrade[0]);
      // print(data);