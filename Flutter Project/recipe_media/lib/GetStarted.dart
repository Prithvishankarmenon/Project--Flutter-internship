import 'package:flutter/material.dart';
import 'package:recipe_media/LoginPage.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[600],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
          }, child: Text("Lets get Started."),)
        ],
      ),
    );
  }
}