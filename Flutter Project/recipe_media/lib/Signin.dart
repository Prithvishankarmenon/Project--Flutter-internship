import 'package:flutter/material.dart';
import 'package:recipe_media/HomeScreen.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final TextEditingController userNamecmd = TextEditingController();
  final TextEditingController emailcmd = TextEditingController();
  final TextEditingController mobilecmd = TextEditingController();
  final TextEditingController passWordcmd = TextEditingController();
  bool select = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 109, 59, 1.0), // Set background color to orange
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(), // Push the sign-up form to the bottom
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.network(
                      'https://your-image-url.com/pizza.png', // Replace with your image URL
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Create new account",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        controller: userNamecmd,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          prefixIcon: Icon(Icons.person, color: Colors.orange),
                          labelText: "Username",
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        controller: emailcmd,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          prefixIcon: Icon(Icons.email, color: Colors.orange),
                          labelText: "Username or email id",
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        controller: mobilecmd,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          prefixIcon: Icon(Icons.phone, color: Colors.orange),
                          labelText: "Mobile number",
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        obscureText: select,
                        controller: passWordcmd,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          prefixIcon: Icon(Icons.lock, color: Colors.orange),
                          suffixIcon: IconButton(
                            icon: select
                                ? Icon(Icons.visibility_off_sharp, color: Colors.orange)
                                : Icon(Icons.visibility, color: Colors.orange),
                            onPressed: () {
                              setState(() {
                                select = !select;
                              });
                            },
                          ),
                          labelText: "Password",
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()),);
                      
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orangeAccent,
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: true, // Replace with actual value
                          onChanged: (bool? value) {
                            // Handle checkbox state
                          },
                        ),
                        Text(
                          "I agree to the ",
                          style: TextStyle(color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigate to terms and conditions
                          },
                          child: Text(
                            "Terms and Conditions",
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
