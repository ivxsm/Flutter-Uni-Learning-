import 'package:supabase_flutter/supabase_flutter.dart';

class Student {
  int? id;
  String? name;
  int? age;
  int? salary;

  Student({this.age, this.name, this.id, this.salary});

  factory Student.fromjson(Map json) {
    return Student(
        age: json["age"],
        name: json['name'],
        id: json['id'],
        salary: json['salary']);
  }
}
