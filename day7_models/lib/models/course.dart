class Course {
  int? id;
  String? title;

  Course({this.id , this.title});
  factory Course.formJosn(Map<String,dynamic> json){
    return Course(
      id: json['id'],
      title: json['title'],
    );
  }
}
