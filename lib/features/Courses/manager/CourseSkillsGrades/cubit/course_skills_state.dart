part of 'course_skills_cubit.dart';

@immutable
sealed class CourseSkillsState {}

final class CourseSkillsInitial extends CourseSkillsState {}
final class CourseSkillsLoading extends CourseSkillsState {}
final class CourseSkillsSuccess extends CourseSkillsState {
  final List skillsGrades,skillsWhy,skillsType;

  CourseSkillsSuccess({required this.skillsType, required this.skillsWhy,required  this.skillsGrades}); 
}
final class CourseSkillsFailure extends CourseSkillsState {
  final String errMessage;

  CourseSkillsFailure({required this.errMessage});
}
