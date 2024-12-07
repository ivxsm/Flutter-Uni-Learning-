import 'package:flutter/material.dart';
import 'package:homeworkproject/Pages/page1.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gift Page"),
        automaticallyImplyLeading: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              // added sizedBox to make the header smaller
              height: 80.0, // here is the fix size.
              child: DrawerHeader(
                margin: EdgeInsets.all(
                    10.0), // added some margin and padding to move the items a bit to the center and it worked !
                padding: EdgeInsets.all(10.0),
                child: Text('Where to go ?', style: TextStyle(fontSize: 17)),
              ),
            ),
            ListTile(
              title: const Text('Send a gift'),
              onTap: () {
                Navigator.pop(context); // stay in the same page
              },
            ),
            ListTile(
              title: const Text('Soon'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Page1()));
              }, // go to the main page
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: 400,
            width: 400,
            color: Colors.black87,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text('Welcome',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.w700)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.card_giftcard,
                      color: Colors.white,
                    ),
                    const Text("This is a gift",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Send!"),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
