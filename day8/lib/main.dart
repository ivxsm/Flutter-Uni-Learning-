import 'package:day8/Pages/home.dart';
import 'package:day8/services/api.dart';
import 'package:flutter/material.dart';

void main() {
  Api().gitdata();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
