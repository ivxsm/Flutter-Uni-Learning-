// ignore_for_file: unused_import, avoid_print

import 'dart:convert';

import 'package:day8/Models/character.dart';
import 'package:day8/data/global_data.dart';
import 'package:http/http.dart' as http;



class Api {
  String link = "https://api.disneyapi.dev/character";

  gitData() async{
    var uri = Uri.parse(link);
    var response = await http.get(uri);
    var responseJson = json.decode(response.body);
    for (var element in responseJson['data']) {
      allCharacters.add(Character.fromJson(element));
    }
    print(allCharacters.length);
  }
}