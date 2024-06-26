import 'package:flutter/material.dart';
import 'package:sample_project/image-screen.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN page Example"),
      ),
      body: Column(
        children: [
          const Padding(
        padding:  EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon : Icon(Icons.portrait),
            suffixIcon : Icon(Icons.visibility),
            labelText: "USER NAME" 
          ),
        ),
      ),
      const Padding(
        padding:  EdgeInsets.all(8.0),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.lock),
            suffixIcon : Icon(Icons.visibility_off),
            labelText: "PASSWORD" ))),

            ElevatedButton (onPressed: () {
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Imagescree()),
  );
              }, 
             child: Text("Log in "))
      ]),
    );
  }
}