import 'package:flutter/material.dart';
import 'package:mainproject/pages/page2.dart';

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
      body: Column(
        children: [
          Container(
            height: 145,
            width: 150,
            color: Colors.black26,
          ),
          Container(height: 12,),
          Container(
            height: 145,
            width: 150,
            color: Colors.black,
          ),
          const Icon(Icons.network_wifi_3_bar , size: 50,),
          const Text("data" ,style: TextStyle(fontSize: 24),),
          ElevatedButton(onPressed:(){
            print("Git gud");
          }, child: Text("BREAK")),
          ElevatedButton(onPressed: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=> Page2()));
          }, child: Text('Send a Gift'))
        ],
      )
    );

  } 
}