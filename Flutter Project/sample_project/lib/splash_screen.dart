import 'package:flutter/material.dart';
import 'package:sample_project/functions.dart';
import 'package:sample_project/login.dart';
import 'package:sample_project/login_screen.dart';
import 'package:sample_project/state_change.dart';

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
    print("Hello world");
  }

  void navigateToNextScreen() async {
    print("Hello world");
    await Future.delayed(Duration(seconds: 3));
    bool logedIn = await getData();
    if (logedIn == true) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    } else
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogInst()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Splash Screen",
          style: TextStyle(
              color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
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
