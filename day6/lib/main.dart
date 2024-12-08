import 'package:day6/Pages/intro_page.dart';
import 'package:flutter/material.dart';
// import 'package:day6/Pages/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: intro_page(),
    );
  }
}
