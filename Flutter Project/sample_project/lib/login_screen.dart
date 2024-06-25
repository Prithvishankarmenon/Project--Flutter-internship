import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0,131, 108, 1.0),
        
        title: const Text("WhatsApp"),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),
        actions: [
          Icon(Icons.search, color: Colors.white60),
          Icon(Icons.more_vert, color: Colors.white60)
        ],
      ),

      body:Column(
        children: [
          Text("Hello world",style: TextStyle(
        fontSize: 20
      ),),
      Text("Hello world",style: TextStyle(
        fontSize: 20
      ),),
      Text("Hello world",style: TextStyle(
        fontSize: 20
      ),)
        ],
      ),

    );
  }
}
