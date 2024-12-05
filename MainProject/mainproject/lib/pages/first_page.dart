import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 34, 34),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        title: const Text("Welcome" , style: TextStyle(color: Color.fromARGB(255, 237, 242, 239,), fontSize: 40)),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(10),
      ),
        ),
      ) ,
      body: Column(children: [
        Container(
          height: 122,
          width: 200,
          color: Colors.black,
        ), Container(
          height: 122,
          width: 200,
          color: const Color.fromARGB(255, 218, 7, 7),
        ),
        const Text("Testing ", style: TextStyle(color: Colors.blue , fontSize: 30 , letterSpacing: 3),)
      ],)
    );


  } 
}