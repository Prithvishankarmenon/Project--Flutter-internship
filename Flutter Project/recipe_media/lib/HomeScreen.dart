import 'package:flutter/material.dart';
import 'package:recipe_media/CreateNewReceipe.dart';
import 'package:recipe_media/Functions.dart';
import 'package:recipe_media/Splash_screen.dart';
import 'package:recipe_media/ViewReceipe.dart';

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
          context, MaterialPageRoute(builder: (context) => CreateNewReceipe()));
          }, child: Text("Add Receipe"))
        ,
        ElevatedButton(onPressed: () {
          Navigator.push(
          context, MaterialPageRoute(builder: (context) => viewReceipe()));
        },child: Text("View Existing receipe"),),
        ElevatedButton(
            onPressed: () async {
             addDataTO(false);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SplashScreen()));}
  , child: Text("Log Out"),),

    ]));
  }
}