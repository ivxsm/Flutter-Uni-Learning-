import 'package:day7_models/data/global_data.dart';
import 'package:day7_models/models/course.dart';
import 'package:flutter/material.dart';

List allcourses = [];

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  void initState() {
    for (var element in courseList) {
      allcourses.add(Course.formJosn(element));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("dataaa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: allcourses.length,
            itemBuilder: (context, index) => Card(
                  child: Column(
                    children: [
                      Text(allcourses[index].title),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('duration'),
                          Text('level'),
                          Text('rating'),
                        ],
                      )
                    ],
                  ),
                )),
      ),
    );
  }
}
