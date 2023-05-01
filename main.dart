import 'dart:io';
import 'course.dart';
import 'schedule.dart';

void main() {
  Schedule schedule = Schedule();

  while (true) {
    print("\n1. Add course");
    print("2. Remove course");
    print("3. View schedule");
    print("4. Exit");
    stdout.write("Select an option: ");

    String option = stdin.readLineSync()!.trim();

    if (option == "1") {
      stdout.write("Enter course code: ");
      String code = stdin.readLineSync()!.trim();

      stdout.write("Enter course name: ");
      String name = stdin.readLineSync()!.trim();

      stdout.write("Enter credit hours: ");
      int creditHours = int.parse(stdin.readLineSync()!.trim());

      Course course = Course(code, name, creditHours);
      schedule.addCourse(course);

      print("Course added successfully!");
    } else if (option == "2") {
      stdout.write("Enter course code to remove: ");
      String code = stdin.readLineSync()!.trim();

      schedule.removeCourse(code);

      print("Course removed successfully!");
    } else if (option == "3") {
      schedule.printSchedule();
    } else if (option == "4") {
      break;
    } else {
      print("Invalid option. Please try again.");
    }
  }
}
