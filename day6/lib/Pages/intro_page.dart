import 'package:flutter/material.dart';

int counter = 0;
// ignore: camel_case_types
class intro_page extends StatefulWidget {
  const intro_page({super.key});

  @override
  State<intro_page> createState() => _intro_pageState();
}

class _intro_pageState extends State<intro_page> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.amberAccent,
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
               const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: " enter your name"),
              ),
               const SizedBox( height: 12),
              Text("Number is $counter" , style: const TextStyle(fontSize: 32),),
             const  SizedBox( height: 32),
              ElevatedButton(onPressed: (){
                setState(() {
                    counter++;      
                });
              }, child: const Text("press"))
            ],
          ),
        ),
      ),
    );
  }
}
