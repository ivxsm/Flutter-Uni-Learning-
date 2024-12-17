import 'package:day10_database/services/database.dart';
import 'package:day10_database/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('working?/'),
        ),
        body: FutureBuilder(
          future: Database().getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var item = snapshot.data![index];
                  return CardWidget(
                    age: item.age,
                    id: item.id,
                    name: item.name,
                    salary: item.salary,
                  );
                },
              );
            } else if ( snapshot.connectionState == ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator(),);
            }else {
              return const Center(child: Text("error"),);
            }
          },
        ));
  }
}
