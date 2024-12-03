

int swapNumber(int numb) => 1- numb ;

bool cheakliters (String x ){
  String toLowerCase= x.toLowerCase();
  List list= toLowerCase.split("");
  Set set = list.toSet();
  set.removeAll({" "});
  print(set);
  return set.length == 26;
}

// Q4 ::

void countLitterApper ( String str ){
  Map <String , int > map = {};
  str = str.trim();
  for ( int i = 0 ; i < str.length ; i++){
    String letter = str [i];
    if ( map.containsKey(letter)){
      map[letter] = map[letter]! + 1;
    }
    else{
      map[letter]= 1;
    }
  }
}

// Q5 ::
void countletterlsit (String str){
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
  // first test
  // print(swapNumber(1));
  // print(swapNumber(0));
  // print(cheakliters("toosmallword"));
  // print(cheakliters("abcdefghijklmNOPQRSTUVWXYZ"));
  // print(cheakliters("The quick brown fox jumps over three meter and better than a lazy dog"));
  // print(cheakliters(" this iss ntoott working xxx ds"));

  // print(cheakliters('mississippi'));
  countletterlsit("mississippi");

}