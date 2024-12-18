import 'package:day10_database/services/database.dart';
import 'package:day10_database/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController ageController = TextEditingController();
    final TextEditingController salaryController = TextEditingController();

    @override
    void dispose() {
      nameController.dispose();
      ageController.dispose();
      salaryController.dispose();
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('working?/'),
      ),
      body: FutureBuilder(
        future: Database().getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var item = snapshot.data![index];
                return CardWidget(
                  age: item.age,
                  id: item.id,
                  name: item.name,
                  salary: item.salary,
                );
              },
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const Center(child: Text("error"));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show dialog on FAB press
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Add New Student'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        prefixIcon: HugeIcon(
                          icon: HugeIcons.strokeRoundedSquareLockPassword,
                          color: Colors.black,
                          size: 24.0,
                        ),
                        labelStyle: TextStyle(fontSize: 15),
                        labelText: 'Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: ageController,
                      decoration: const InputDecoration(
                        prefixIcon: HugeIcon(
                          icon: HugeIcons.strokeRoundedSquareLockPassword,
                          color: Colors.black,
                          size: 24.0,
                        ),
                        labelStyle: TextStyle(fontSize: 15),
                        labelText: 'Age',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: salaryController,
                      decoration: const InputDecoration(
                        prefixIcon: HugeIcon(
                          icon: HugeIcons.strokeRoundedSquareLockPassword,
                          color: Colors.black,
                          size: 24.0,
                        ),
                        labelStyle: TextStyle(fontSize: 15),
                        labelText: 'Salary',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                actions: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: const Text('Close'),
                      ),
                      TextButton(
                          onPressed: () {
                            Database().addStudent(
                                name: nameController.text,
                                age: int.parse(ageController.text),
                                salary: double.parse(salaryController.text));
                            Navigator.of(context).pop();
                            setState(() {
                              
                            });
                          },
                          child: const Text("add student"))
                    ],
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.endFloat, // Position FAB at bottom-right
    );
  }
}
