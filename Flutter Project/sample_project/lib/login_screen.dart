import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 218, 100),
        title: const Text("WhatsApp"),
        titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 25, 
         ),
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert)
        ],

      ),
    );
  }
}