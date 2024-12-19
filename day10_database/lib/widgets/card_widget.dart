import 'package:day10_database/model/student.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Student student ; 
  const CardWidget({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding( 
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(student.id.toString()),
                const SizedBox(
                  width: 8,
                ),
                Text(student.name.toString()),
              ],
            ),
            Text(student.age.toString()),
            Text(student.salary.toString()),
          ],
        ),
      ),
    );
  }
}
