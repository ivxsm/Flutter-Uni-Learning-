import 'package:day10_database/model/student.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Database {
  final supabase = Supabase.instance.client;
  Future<List<Student>> getData() async {
    var response = await supabase.from("student").select();

    List<Student> studetlist = [];
    for (var element in response) {
      studetlist.add(Student.fromjson(element));
    }
    print(studetlist);
    return studetlist;
  }
}
