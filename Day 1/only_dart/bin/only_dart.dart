
void main(List<String> arguments) {

// we have loop and do while and while and for each 

// // loop explination
//   for ( int i = 0; i < 10; i++){
//   print(i);
// }

// ternary operator
// statement = condtion ? true : false ;
  int a = 10;
  int b = 20;

  print( a > b ? a : b);


// lists 
List names = ['jack', 'jill', 'hill'];
names.add('john');
print(names.isEmpty);

for (var name in names){
  print(name);
}

// list can take duble values while set can't

// Map student = {
//   'name': 'john',
//   'age': 20,
//   'marks': 90
// };

// starting with function


void printName({required String name, int? age = 20}){
  print("hello $name you are $age years old");
}

printName(name: 'john', age: 30);
printName(name: 'john');
}