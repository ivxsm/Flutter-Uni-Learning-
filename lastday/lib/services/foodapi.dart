import 'package:http/http.dart' as http;
import 'package:lastday/Model/food.dart';
import 'dart:convert';

import 'package:lastday/data/global.dart';

class Foodapi {
  String link = 'https://api.spoonacular.com/recipes/complexSearch?query=pasta&maxFat=25&number=3&maxCaffeine=50&maxProtein=100&minCalories=100&apiKey=3906e07f95cb4640a858e0ca9ea81961';

  gitFood() async {
    var uri = Uri.parse(link);
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      // Decode the JSON response
      var responseJson = json.decode(response.body);

      // Access the "results" array
      if (responseJson['results'] is List) {
        for (var element in responseJson['results']) {
          listofoods.add(Food.fromJson(element));
        }
      }

      print(listofoods.length);
      print(listofoods);
    } else {
      print('Failed to fetch data: ${response.statusCode}');
    }
  }
}
