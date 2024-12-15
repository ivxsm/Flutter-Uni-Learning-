

class Character {
  List? films;
  String? name;
  String? imageUrl;
  Character({this.films, this.imageUrl, this.name,});
  factory Character.jsonForm (Map json){
    return Character(name: json["name"],imageUrl: json["imageUrl"], films: json["films"]);
  }
}