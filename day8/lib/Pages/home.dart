import 'package:day8/data/global_data.dart';
import 'package:day8/services/api.dart';
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
          padding: const EdgeInsets.all(20),
          child: FutureBuilder(
            future: Api().gitData(),
            builder: (context, snapshot) {
               if (snapshot.connectionState == ConnectionState.waiting){
                  return const CircularProgressIndicator();
                }
                else if ( snapshot.connectionState == ConnectionState.done){ 
                  return ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) =>Card(
                color: index.isEven
                    ? Colors.blueAccent
                    : const Color.fromARGB(115, 164, 23, 23),
                child: Column(
                  children: [
                    TextWidget(
                      name: allCharacters[index].id.toString(),
                      isBold: true,
                      num: index,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Image.network(allCharacters[index].imageUrl!),
                    const SizedBox(
                      height: 12,
                    ),
                    TextWidget(
                      name: allCharacters[index].name!,
                      num: index,
                    ),
                  ],
                ),
              ),
            );
            } else return TextWidget(name: "", num: 0);
            },
          )),
    );
  }
}
