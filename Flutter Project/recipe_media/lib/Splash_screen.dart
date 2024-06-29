import 'package:flutter/material.dart';
import 'package:recipe_media/Functions.dart';
import 'package:recipe_media/GetStarted.dart';
import 'package:recipe_media/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
   
  }
 
 void navigateToNextScreen() async{
  await Future.delayed(Duration(seconds: 3));
  bool logedIn = await getData();
    if (logedIn == true) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GetStarted()));
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          "Welcome",
          style: TextStyle(
              color: Colors.orange[900], fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Image.network(
              "https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1707920217641.jpg")
        ],
      ),

    );
  }
}