/* 
Q1: Write a Dart function that receives a number either (0 or 1), 
and return the other.

Sol: simple arrow function that return 1 - numb
*/

int swapNumber(int numb) => 1- numb ;


/*
 Q2: Write a Dart function that receives a string
 and checks whether this string has all English letters

 Sol: remove all spaces and convert to lower case
 then to set and check if the length is 26 or not
*/ 

bool checkLetters (String str ){
  String toLowerCase= str.toLowerCase();
  List list= toLowerCase.split("");
  Set set = list.toSet();
  set.removeAll({" "});
  return set.length == 26;
}


/*Q3: Write a Dart function that receives a string and counts 
the occurrences of each letter, then print the map. 

Sol: create a map and loop over the string 
and check if the letter is in the map or not
*/
void countLetters ( String str ){
  Map <String , int > map = {};
  str = str.trim();
  for( int i = 0; i < str.length; i++){
    //String letter = str [i]; , i dont need this , i can simply use str[i]
    if ( map.containsKey(str[i])){
      map[str[i]] = map[str[i]]! + 1;
    }
    else{
      map[str[i]]= 1;
    }
  }
  print(map);
}

/* 
Q4: Write another method that uses a List,
then print occur letters
*/
void countLettersList (String str){
  List list = List.generate(26,(item) => item = 0);
  for (int i = 0 ; i < str.length ;i++ ){
    String litter = str[i];
    int index = litter.codeUnitAt(0)-97 ;
    list[index] ++;
  }
  for ( int i = 0 ; i < list.length ; i++){
    int index = list[i];
    String letter = String.fromCharCode(i + 97);

    if(index > 0){
        print("$letter $index");
    }
  }
}

void main (){
print(swapNumber ( 1));
print(checkLetters('help'));
print(checkLetters("zxcvbnmasdfghjklqwertyuioppp"));
countLetters('successful');
countLettersList('mississippi');
}