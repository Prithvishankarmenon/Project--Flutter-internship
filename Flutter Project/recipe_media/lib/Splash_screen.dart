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

  void navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    bool loggedIn = await getData();
    if (loggedIn == true) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => GetStarted()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 109, 59, 1.0),
      body: Stack(
        children: [
          // Full screen image
          Positioned.fill(
            child: Image.asset(
              'assets/splash2.png',
              fit: BoxFit.cover,
            ),
          ),
          // Centered image and text
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/splash1.png',
                  width: 250, // Set desired width
                  height: 150, // Set desired height
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 4), // Space between image and text
                Text(
                  'Tasty',
                  style: TextStyle(
                    fontSize: 50, // Set desired font size
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic, // Set desired font weight
                    color: Colors.white, // Set desired text color
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
