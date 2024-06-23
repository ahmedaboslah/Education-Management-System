import 'package:bloc/bloc.dart';
import 'package:education_management_system/constants.dart';
import 'package:education_management_system/core/utils/Api_server.dart';
import 'package:meta/meta.dart';

part 'course_skills_state.dart';

class CourseSkillsCubit extends Cubit<CourseSkillsState> {
  CourseSkillsCubit() : super(CourseSkillsInitial());
  Api api = Api();
  Future<void> SkillsGrades() async {
    emit(CourseSkillsLoading());
    try {
      List data = await api.get(endPoint: 'GetSkills');
      print(data);
      List grades = [];
      List Why = [];
      List type=[];
      for (int i = data.length-1; i >= 0; i = i - 1) {
        if (id == data[i]['id']) {
          String grade = data[i]['grades'];
          String why = data[i]['why'];
          String Type=data[i]['Type'];
          grades.add(grade);
          Why.add(why);
          type.add(Type);
        }
      }
      // String grade = data[0]['grades'];
      // String why = data[0]['why'];
      // grades.add(grade);
      // grades.add(why);
      emit(CourseSkillsSuccess(skillsGrades: grades, skillsWhy: Why, skillsType: type,));
      print(grades);
    } catch (e) {
      emit(CourseSkillsFailure(errMessage: e.toString()));
    }
  }
}
