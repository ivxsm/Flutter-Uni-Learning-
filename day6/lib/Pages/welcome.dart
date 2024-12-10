import 'package:day6/Pages/restpass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {

TextEditingController emailControler = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.logout_outlined,
              size: 100,
            ),
            const SizedBox(
              height: 1,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.height * 0.4,
              child:  TextField(
                decoration: const InputDecoration(hintText: "email"),
                controller: emailControler ,
              ),
            ),
             SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.height * 0.4,
              child: const TextField(
                decoration: InputDecoration(hintText: "password"),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){}, child: const  Text("login"),),
                  ElevatedButton(onPressed: (){}, child: const Text("sign")),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.4,
              child:  TextButton(
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>  Restpass(email: emailControler.text)));
                },
              child: const Text("Forgot Password?" , style: TextStyle(decoration: TextDecoration.underline , color: Colors.blue),),                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
