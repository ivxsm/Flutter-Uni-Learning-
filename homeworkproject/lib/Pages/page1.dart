import 'package:flutter/material.dart';
import 'package:homeworkproject/Pages/Page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Never Come BAck ScreEn"),
        backgroundColor: Colors.amberAccent,
        automaticallyImplyLeading: false, // to hide the Back button
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.shopify_rounded,
              size: 100,
              color: Colors.orange[300],
            ),
            const Text('Welcome To The Gift Shop',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 2,
                  fontSize: 20,
                  decoration: TextDecoration.overline,
                )),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Page2()));
                },
                child: const Text(
                  "Send a Gift !",
                  style: TextStyle(
                      fontSize: 17,
                      wordSpacing: 0.5,
                      color: Color.fromARGB(219, 16, 16, 16)),
                ),
              ),
            )
            // did all this because i could not make everything in the center , it worked>.>
          ],
        ),
      ),
    );
  }
}
