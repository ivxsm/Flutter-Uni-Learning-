import 'package:day8/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("day773"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Card(
              color: index.isEven
                  ? Colors.blueAccent
                  : const Color.fromARGB(115, 164, 23, 23),
              child: Column(
                children: [
                  TextWidget(name: "id", isBold: true, num: index,),
                  const SizedBox(
                    height: 12,
                  ),
                  Image.network(
                      "https://static.wikia.nocookie.net/disney/images/d/d3/Vlcsnap-2015-05-06-23h04m15s601.png"),
                 const  SizedBox(
                    height: 12,
                  ),
                   TextWidget(name: "name", num: index,),
                ],
              ),
            ),
          )),
    );
  }
}
