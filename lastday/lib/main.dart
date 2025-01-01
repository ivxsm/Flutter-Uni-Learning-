import 'package:flutter/material.dart';
import 'package:lastday/data/global.dart';
import 'package:lastday/pages/firstpage.dart';
import 'package:lastday/services/foodapi.dart';

void main() {
runApp(const MainApp());
print(listofoods[0]);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Firstpage()
    );
  }
}
