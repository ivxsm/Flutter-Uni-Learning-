import 'package:flutter/material.dart';
import 'package:lastday/Model/food.dart';
import 'package:lastday/data/global.dart';
import 'package:lastday/services/foodapi.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: FutureBuilder(future: Foodapi().gitFood(),
            builder: (context, snapshot) {
               if (snapshot.connectionState == ConnectionState.waiting){
                  return const CircularProgressIndicator();
                }
                else if ( snapshot.connectionState == ConnectionState.done){ 
                  return ListView.builder(
                     itemCount: 5,
                     itemBuilder: (context, index) => Column(
                      children: [
                        Text(listofoods[index].results[index].title!),
                      ],
                     ),
                  );}
                  else return Text('working');
                  }
      ),
    );
  }
}