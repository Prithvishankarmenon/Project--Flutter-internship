import 'package:flutter/material.dart';
import 'package:recipe_media/LoginPage.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 109, 59, 1.0),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "A Culinary\nHaven for\nFlavour\nEnthusiasts.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Image.network(
                  "https://s3-alpha-sig.figma.com/img/8a36/925e/e7f1a437e5f8358151aa853d070da588?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=M6aZUJe0IAwUIm8MzjKTvL7weeqZ0uGes4qEElJpZtC8Su7mHQDSNx9SwRxWge0M16kHHjRWS1VdHZt-NqXVzLNzfq-JaPHZhlrILTw1V4UmCLcHQ-o9aPSswI87kmKtFXeK~2EelG2De5-CVu8rMsp65MJ9erNTG5RhXPll9LbgLaNa15QrQJVyPicfLu0C2V67ayfQVPu03n8MRJR7LAeJcx607Wn7XfydnFbiQ00Pba-o0p86hAInfVUxAc2surLXt2SBcCP6jtLsbgCu30sGfIYFIRLbUJ~ZcnXgaW3IXnPhB9Hdeq0FD5GY5XsbTkRyfpaNPJIF~K3E1qvw2w__",
                  fit: BoxFit.cover,
                  height: 409,
                  width: double.infinity,
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          height: 80.0,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
            child: Text(
              "Get Started",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
