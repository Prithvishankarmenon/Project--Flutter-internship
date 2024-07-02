import 'package:flutter/material.dart';
import 'package:recipe_media/Functions.dart';
import 'package:recipe_media/HomeScreen.dart';
import 'package:recipe_media/Signin.dart';

bool select = true;
String Pass = "12345";
String user = "hi";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNamecmd = TextEditingController();
  final passWordcmd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251,109,59, 1.0), // Set background color to orange
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(), // Push the login form to the bottom
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Login to your account",
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
                          prefixIcon: Icon(Icons.portrait, color: Colors.orange),
                          labelText: "Username or email id",
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
                      onPressed: () async {
                        if (user == userNamecmd.text && Pass == passWordcmd.text) {
                          addDataTO(true);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()),
                          );
                        } else {
                          addDataTO(false);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Invalid Username and Password, Please try again.")),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orangeAccent,
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextButton(
                      onPressed: () {
                        addDataTO(true);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Signin()),);
                      },
                      child: Text(
                        "not a user? Sign up now",
                        style: TextStyle(color: Colors.white),
                      ),
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
