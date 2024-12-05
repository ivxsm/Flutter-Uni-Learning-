import 'package:flutter/material.dart';
import 'package:mainproject/pages/first_page.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text("Gift Page!" , style: TextStyle(letterSpacing: 1),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 400,
          width: 400,
          color: Colors.black87,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('Titel', style: TextStyle(fontSize: 30, color: Colors.amberAccent, fontWeight: FontWeight.w700)),
              ElevatedButton(onPressed:() {
                  Navigator.push(context, 
                  MaterialPageRoute(
                    builder: 
                    (context)=> const FirstPage()));

                }, child: const Text("Go Back!"), ) ,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                const Icon(Icons.card_giftcard , color: Colors.white,),
                const Text("This is a gift" , style: TextStyle(color: Colors.white , )),
                ElevatedButton(onPressed:() {}, child: const Text("Send!"), )
              ],)
            ],
          ) 
        ),
      )
    );
  }
}