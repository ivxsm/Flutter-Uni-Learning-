import 'package:learning/learning.dart' as learning;
import 'person.dart';
import 'student.dart';
// OOP learning
void main(List<String> arguments) {
  student me = student(name: "khaled", joined: true, age: 21, GPA: 5.0);
  me.GPA;
  me.age;
  me.currentGpa(newGpa: 2);
  me.info();
  me.currentGpa();
}
