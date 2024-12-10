import 'package:flutter/material.dart';

class Restpass extends StatelessWidget {
  final String email;
  const Restpass({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    // Create a TextEditingController with the initial text set to the email
    final TextEditingController emailController =
        TextEditingController(text: email);

    return Scaffold(
        appBar: AppBar(),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Icon(Icons.restore_rounded),
              ),
              const SizedBox(height: 10),
              Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width *
                      0.5, // Corrected to use width for sizing
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border:
                          OutlineInputBorder(), // Added a border for better UX
                    ),
                    readOnly:
                        false, // Make the TextField read-only if the email shouldn't be edited
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Send"),
          ),
        ]));
  }
}
