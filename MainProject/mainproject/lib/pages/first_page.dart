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
      body: Row(children: [
        Container(
          height: 122,
          width: 150,
          color: Colors.black,
          child: const Text("Testing ", style: TextStyle(color: Color.fromARGB(255, 230, 233, 236) , fontSize: 30 , letterSpacing: 3),),
        ), Container(
          height: 122,
          width: 150,
          color: const Color.fromARGB(255, 218, 7, 7),
        ),
      ],)
    );

  } 
}