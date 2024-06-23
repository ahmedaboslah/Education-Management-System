part of 'course_grade_cubit.dart';

@immutable
sealed class CourseGradeState {}

final class CourseGradeInitial extends CourseGradeState {}
final class CourseGradeLoading extends CourseGradeState {}
final class CourseGradeSuccess extends CourseGradeState {
 final List grades;
 
  CourseGradeSuccess({required this.grades});
}
final class CourseGradeFailure extends CourseGradeState {
  final String errmessage;

  CourseGradeFailure({required this.errmessage});
}
