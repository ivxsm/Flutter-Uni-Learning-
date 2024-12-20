
class Student {
  int? id;
  String? name;
  int? age;
  double? salary;

  Student({this.age, this.name, this.id, this.salary});

  factory Student.fromjson(Map json) {
    return Student(
        age: json["age"],
        name: json['name'],
        id: json['id'],
        salary: json['salary']);
  }
}
