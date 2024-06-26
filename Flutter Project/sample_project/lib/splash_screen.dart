import 'package:flutter/material.dart';
import 'package:sample_project/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
navigateToNextScreen();
    print("Hello world");
  }

void navigateToNextScreen()async {

    print("Hello world");
  await  Future.delayed(Duration(seconds: 3));

    Navigator.push(context,
     MaterialPageRoute(
      builder: (context)=>LogIn()
    ));
}
 
@override 
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: FlutterLogo(size: 300),),

    );
  }
}