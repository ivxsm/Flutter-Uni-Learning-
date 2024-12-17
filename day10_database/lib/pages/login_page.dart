import 'package:day10_database/services/database.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:day10_database/pages/first.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emalcontroller = TextEditingController();
  final TextEditingController passlcontroller = TextEditingController();
  final FocusNode focusNodemil = FocusNode();
  final FocusNode focusNodpass = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNodemil.addListener(() {
      setState(() {}); 
    });
    focusNodpass.addListener(() {
      setState(() {}); 
    });
  }

  @override
  void dispose() {
    emalcontroller.dispose();
    passlcontroller.dispose();
    focusNodemil.dispose();
    focusNodpass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HugeIcon(
              icon: HugeIcons.strokeRoundedMonocle01,
              color: Colors.black,
              size: 50.0,
            ),
            SizedBox(height: 12),
            TextField(
              focusNode: focusNodemil,
              controller: emalcontroller,
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
              },
              decoration: InputDecoration(
                prefixIcon: HugeIcon(
                  icon: HugeIcons.strokeRoundedMail01,
                  color: Colors.black,
                  size: 24.0,
                ),
                labelStyle: TextStyle(fontSize: 15),
                labelText: focusNodemil.hasFocus ? 'Email' : null,
                floatingLabelAlignment: FloatingLabelAlignment.center,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              
              focusNode: focusNodpass,
              controller: passlcontroller,
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
              },
              decoration: InputDecoration(
                prefixIcon: HugeIcon(
                  icon: HugeIcons.strokeRoundedSquareLockPassword,
                  color: Colors.black,
                  size: 24.0,
                ),
                labelStyle: TextStyle(fontSize: 15),
                labelText: focusNodpass.hasFocus ? 'password' : null, 
                floatingLabelAlignment: FloatingLabelAlignment.center,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    try {
                      await Database().signup(
                        password: passlcontroller.text,
                        email: emalcontroller.text,
                      );

                      if (context.mounted) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const First(),
                          ),
                        );
                      }
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(e.toString())),
                      );
                    }
                  },
                  child: Text("sign up"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
                SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      await Database().login(
                        password: passlcontroller.text,
                        email: emalcontroller.text,
                      );

                      if (context.mounted) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const First(),
                          ),
                        );
                      }
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(e.toString())),
                      );
                    }
                  },
                  child: Text("sign in"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
