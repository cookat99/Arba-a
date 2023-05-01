import 'course.dart';

class Schedule {
  List<Course> courses = [];

  void addCourse(Course course) {
    courses.add(course);
  }

  void removeCourse(String code) {
    courses.removeWhere((course) => course.code == code);
  }

  void printSchedule() {
    if (courses.isEmpty) {
      print("Your schedule is empty.");
    } else {
      print("Your course schedule:");
      for (int i = 0; i < courses.length; i++) {
        print(
            "${i + 1}. ${courses[i].code} - ${courses[i].name} (${courses[i].creditHours} credit hours)");
      }
    }
  }
}
