import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('enter otp'),
      ),
      body:
      Column(
        children: [
          Text("OTP is send to your email"),
          TextField(

            
          )
        ],
      )
      ,
    );
  }
}