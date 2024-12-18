import 'package:day10_database/model/student.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Database {
  final supabase = Supabase.instance.client;

  // get data
  Future<List<Student>> getData() async {
    var response = await supabase.from("student").select();

    List<Student> studetlist = [];
    for (var element in response) {
      studetlist.add(Student.fromjson(element));
    }
    return studetlist;
  }
// add student 
  addStudent ({required String name , required int age , required double salary}) async{
    await supabase.from('student').insert(
      {
        'name':name,
        'age': age,
        'salary':salary
      }
    );
  }
// sign up function
  Future signup ({ required String password ,required String email}) async{
    await supabase.auth.signUp(password: password, email:email);
// login function
  }
   Future login({ required String password ,required String email }) async{
    await supabase.auth.signInWithPassword(password: password, email: email);
  }
  
}
