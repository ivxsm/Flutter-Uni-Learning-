import 'package:day6/Pages/login_page.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String name;
  const Info({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade50,
        title: Text("Your data $name"),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              print("Name is ahme");
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const login_page()));
            },
            child: Container(
              alignment: Alignment.center,
              height: 200,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.black26,
                  border: Border.all(
                    color: Colors.black26,
                    width: 4,
                  ),
                  ),
                  child: const Text("ahmed"),
            ),
          ),
          Container(
            color: const Color.fromARGB(153, 9, 12, 109),
            height: 200,
            margin: const EdgeInsets.all(20),
          ),
          Container(
            color: const Color.fromARGB(153, 70, 8, 8),
            height: 200,
            margin: const EdgeInsets.all(20),
          ),
          Container(
            color: const Color.fromARGB(153, 9, 109, 31),
            height: 200,
            margin: const EdgeInsets.all(20),
          ),
          Container(
            color: const Color.fromARGB(153, 109, 9, 9),
            height: 200,
            margin: const EdgeInsets.all(20),
          ),
          Container(
            color: const Color.fromARGB(153, 109, 9, 9),
            height: 200,
            margin: const EdgeInsets.all(20),
          ),
          Container(
            color: const Color.fromARGB(153, 29, 9, 109),
            height: 200,
            margin: const EdgeInsets.all(20),
          ),
          Container(
            color: const Color.fromARGB(153, 109, 9, 59),
            height: 200,
            margin: const EdgeInsets.all(20),
          ),
        ],
      ),
    );
  }
}
