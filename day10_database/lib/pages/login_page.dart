import 'package:day10_database/pages/first.dart';
import 'package:day10_database/services/database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emalcontroller = TextEditingController();
    TextEditingController passlcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('log in'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('sign up'),
            TextField(
              controller: emalcontroller,
              decoration: InputDecoration(
                  labelText: 'enter email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ))),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              controller: passlcontroller,
              decoration: InputDecoration(
                  labelText: 'enter pass',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ))),
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () async {
              try {
                  await Database().signup(
                    password: passlcontroller.text, email: emalcontroller.text);

                if (context.mounted) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const First()));
                }
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
              }
              },
              child: Text("sign up"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            )
          ],
        ),
      ),
    );
  }
}
