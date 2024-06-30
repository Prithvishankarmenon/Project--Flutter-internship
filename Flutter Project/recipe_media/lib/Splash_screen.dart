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
    await Future.delayed(Duration(seconds: 10));
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
              "https://s3-alpha-sig.figma.com/img/20f8/1fbb/1809c8e760050809e0c3c98d19a20b56?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=iZF2POMitinik1CsKYBI8EcGHtxc1~ciZ6VJAckYnGeoPqXR3QG01Sgk5E4gdQgokrZrgxxO-A~KJ8x31TFNNM~cV0TkzZw8vIBIsfop~42woi8Fv~H9ZCG5GEdZyyBZQJunI8BzG2pG40eC1GXd~1h9wYg5FxatCTXoNV8O8aSjDANU4YCb1L1V68bN83lnisXUmLR9llGdX88ukWsC7N6QXnTcQmXOA8L8YxEgN3~gstNZwokqVwaWNcpGOW7XPB3YBwqUAl98ZBE3RKEJkTm2299vjbTIT9Anvol0L6puBe2Au5pCVMUngjWZjs-B7f~zbCwIn56GFf-qv91sHA__",
              fit: BoxFit.cover,
            ),
          ),
          // Centered image
          Center(
            child: Image.network(
              "https://s3-alpha-sig.figma.com/img/906f/ef6b/74a76c1d0fa6e6b624d6a0dcb586ce03?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dNQVe-PXFBfrxQnt3LYVzLCk1wlRLJ5Bzx3tsXZSTPpEMiVn1HGvbjA5hXdHu0~Cz8EfpU~9EObtTjXTuV-ZAv5OpAJkKjcdIM~ly~qQ2KPDcYt1aQ6ZfrIO3lvBqpiac38o9PpHw2X5BKwQzzHg~WHDOGUMHKMuP4oCsyUuKJQgP0g~UrygbPIso1aNwr4oZTm~afD74hj7PBYlbj4wNL2kQmth4hWtrLtXF~HVOxxpYgSX~tqRkgeNOIqCTl3J3Ea4a-T8hoxG7PlYVDuNCXpFLeutVu7dykR4nELuZ8hF4OLZ1HVDVNPrK6P4K9jUyQH6C5AfNkMad4GU8hJe0Q__",
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
