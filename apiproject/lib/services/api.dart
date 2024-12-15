


// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:apiproject/data/global_data.dart';
import 'package:apiproject/model/character.dart';
import 'package:http/http.dart' as http;

class Api {
  String link = "https://api.disneyapi.dev/character";
  getData() async {
    var uri = Uri.parse(link);
    var response = await http.get(uri);
    var responsjson = json.decode(response.body);

    for (var element in responsjson['data']) {
      allCharacters.add(Character.jsonForm(element));
    }
  print(allCharacters.length);
  }
}
