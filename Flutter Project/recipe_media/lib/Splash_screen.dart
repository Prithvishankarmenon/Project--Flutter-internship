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
      backgroundColor: Color.fromRGBO(251,109,59, 1.0),
      body: Stack(
        children: [
          // Full screen image
          Positioned.fill(
            child: Image.network(
              "https://s3-alpha-sig.figma.com/img/20f8/1fbb/1809c8e760050809e0c3c98d19a20b56?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=o8BQNmyCVCh7BJJv4rHik6eCCaMn~UePX~2d9cU8-eu0ywr7W6gKChofHTRFLhF59ux9BbJWl8t3sXGBVQcCu4oS9G9f3fa6D0klU~lU~dI560NX4ldAmYJvOj4jJrLuBRrNg4BnxjsKmIp17Z1dZ3p6ntY8KwLYogTwg7E0snqCcq5IOq7aaJ0S6KK9MJX5T6BqQRpBb2V823HBqZeAjtTZ11ULso1AD7k3~q7GVa6aMDzM~8WW4qq4qZ1IzMXuOdhLmqCHiWcI0RQ5vNBvd-U7FfPrfCjnRB2UsOebwozCBfr7RZnj4kiMtC6U8vZEEtzV5kg9-c~hDn3oarKxCA__",
              fit: BoxFit.cover,
            ),
          ),
          // Centered image
          Center(
            child: Image.network(
              "https://s3-alpha-sig.figma.com/img/906f/ef6b/74a76c1d0fa6e6b624d6a0dcb586ce03?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NEJMdBZOJ1AdE~PLGM02aO8bM7k3~9oS3X16LbkgVxbCfemAEtES5AkLECXGLN7Ah~jTyKnl1BcbkLwBbmTmo1GzsxVQCjvxYq6ltWCeIoBjDOVY2WYbQ7Q50Y42dI9lEOhleEFdaFNXCsZdVQG7hYjb-~s-nunPbNkqk5qcELpsCPbMUzOz8-nbL4AjFylLoa1JyfvEn2X0eVAYApE5JkS3gCp5XM42X77Mm59oEZJMdLaykaxPRWgyFSrd8-xcpx16Hfk4i0YNEU-bOIXVLbmxyZ944HaMhk2-hcXsDVUtnDS9-p5Q~g~bM8aQKjKUtzu-sNafsL1abTIpzZbMXg__",
              width: 200, // Set desired width
              height: 200, // Set desired height
             // fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
