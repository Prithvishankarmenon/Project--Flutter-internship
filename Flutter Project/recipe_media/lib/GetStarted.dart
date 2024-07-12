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
                  "https://s3-alpha-sig.figma.com/img/8a36/925e/e7f1a437e5f8358151aa853d070da588?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OK5QzBFsS7x6zR5ZpdsTFbERM~Mp9awJQtH0GM9o305JnQZ55Wq6hKc~ttdywzmsJAQqpVmekSD~LbtkhJf~xcyzHkdHqhJmZBiVpJ3xzNzEZp823xfkNzsJSszjMijBwPL3ldHBbnBRlOCNV1jN-6uh8WvK1ZcJA--U2flW1gp5erQCF8FqnHC9blA-u2gXl~b3GnDNS9MHDUFF7qYQYx1jHLT7DIP7Av88NsHkoFytp4tmkbrY2ZD06W2JBOguyUlwP02MHN2Ax3bLWpBYLZJttz6mfinpF3WOihqMhej0X~0SJQ5YkjJpMaJxYcKoTbHlJZXaHepcm3p7XlKU9A__",
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
