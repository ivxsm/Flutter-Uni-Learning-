import 'package:apiproject/widgets/text_widget.dart';

import 'package:apiproject/Pages/information_page.dart';
import 'package:apiproject/data/global_data.dart';
import 'package:apiproject/extenstion/push.dart';
import 'package:apiproject/services/api.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Character'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: FutureBuilder(
          future: Api().getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: allCharacters.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    context.push(InformationPage(character: allCharacters[index]));
                  },
                  child: Card(
                    color: index.isEven
                        ? Colors.blue.shade100
                        : Colors.pink.shade200,
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Ensure the column only takes the necessary space
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            allCharacters[index].name.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            allCharacters[index].imageUrl.toString(),
                            height: 100, // Constrain the height of the image
                            width: 100, // Constrain the width of the image
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          allCharacters[index].name.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return const Center(child: Text("No data available"));
            }
          },
        ),
      ),
    );
  }
}
