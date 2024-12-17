import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Gpt {

  Future<String> getDat(String promo) async{
  String link = "https://api.openai.com/v1/chat/completions";
  var uri = Uri.parse(link);
  var header = {
    "Content-Type": "application/json",
    "Authorization": "${dotenv.env['AI_KEY']}",
  };

  var body = {
    "model": "gpt-3.5-turbo",
    "messages": [
      {"role": "system", "content": "You are a helpful assistant."},
      {
        "role": "user",
        "content": promo,
      }
    ]
  };
  var request = await http.post(
    uri,
    headers: header,
    body: json.encode(body),
  );
  var respond = jsonDecode(request.body);
  String content = respond["choices"][0]["message"]["content"];
  print(content);
  return content;
  }
}
