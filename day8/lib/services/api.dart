// ignore_for_file: unused_import

import 'package:http/http.dart' as http;


class Api {
  String link = "https://api.disneyapi.dev/character";

  gitdata() async{
    var uri = Uri.parse(link);
    var response = await http.get(uri);

    print(response.body);
  }
}