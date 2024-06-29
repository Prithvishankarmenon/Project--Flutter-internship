import 'package:flutter/material.dart';

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

    );
  }
}