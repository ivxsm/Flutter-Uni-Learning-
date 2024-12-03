class student {
  String name;
  String ?major;
  bool joined;
  int age ;
  double GPA;

  student({ required this.name, this.major = 'not signed', required this.joined, required this.age,required this.GPA});
  

void info (){
  return print("you name is $name and your age is $age and your gpa is $GPA");
}
void currentGpa ({ double newGpa = 0}){
  double sum = newGpa *GPA;
  return print("by multpling your old gpa= $GPA with the new Gpa = $newGpa by you gpa you get $sum ");
} 
}