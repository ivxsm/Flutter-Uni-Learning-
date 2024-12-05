import 'package:flutter/material.dart';
import 'package:mainproject/pages/first_page.dart';
import 'package:mainproject/pages/page2.dart';

void main() {
  runApp(const MainApp());
}


class MainApp extends StatelessWidget{
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstPage(),);
  }
}





