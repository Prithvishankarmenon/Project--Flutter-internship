import 'package:flutter/material.dart';
import 'package:sample_proj/loggin_screen.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

backgroundColor: const Color.fromRGBO(251, 109, 59, 1.0),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "A Culinary Heaven for  Flavour Enthusiasts.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Image.network(
                  "https://s3-alpha-sig.figma.com/img/8a36/925e/e7f1a437e5f8358151aa853d070da588?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=M6aZUJe0IAwUIm8MzjKTvL7weeqZ0uGes4qEElJpZtC8Su7mHQDSNx9SwRxWge0M16kHHjRWS1VdHZt-NqXVzLNzfq-JaPHZhlrILTw1V4UmCLcHQ-o9aPSswI87kmKtFXeK~2EelG2De5-CVu8rMsp65MJ9erNTG5RhXPll9LbgLaNa15QrQJVyPicfLu0C2V67ayfQVPu03n8MRJR7LAeJcx607Wn7XfydnFbiQ00Pba-o0p86hAInfVUxAc2surLXt2SBcCP6jtLsbgCu30sGfIYFIRLbUJ~ZcnXgaW3IXnPhB9Hdeq0FD5GY5XsbTkRyfpaNPJIF~K3E1qvw2w__",
                  fit: BoxFit.cover,
                  height: 400,
                  width: double.infinity,
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          height: 80.0,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LogginpagState()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
            child: const Text(
              "Get Started",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),

    );
  }
}