import 'package:flutter/material.dart';
import 'package:sample_proj/createnewrecipe.dart';
import 'package:sample_proj/functions.dart';
import 'package:sample_proj/splash_screen.dart';
import 'package:sample_proj/veiwrecipe.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome"),
      ),
       body: ListView(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Createnewrecipe()));
          }, child: Text("Add Receipe")),
           ElevatedButton(onPressed: () {
          Navigator.push(
          context, MaterialPageRoute(builder: (context) => Veiwrecipe()));
        },child: Text("View Existing receipe"),),
         ElevatedButton(
            onPressed: () async {
             addDataTO(false);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SplashCreen ()));}
  , child: Text("Log Out"),),

    ]));
  }
}
    