import 'package:flutter/material.dart';
import 'package:recipe_media/Functions.dart';
import 'package:recipe_media/HomeScreen.dart';
import 'package:recipe_media/Signin.dart';

bool select = true;
const String correctPass = "12345";
const String correctUser = "hi";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNamecmd = TextEditingController();
  final passWordcmd = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.deepOrange[400],
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(), // Push the login form to the bottom
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Login to your account",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextFormField(
                          controller: userNamecmd,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            prefixIcon: const Icon(Icons.portrait, color: Colors.orange),
                            hintText: "Username or email id",
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            errorStyle: const TextStyle(color: Color.fromARGB(255, 95, 248, 230)),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a valid username';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextFormField(
                          obscureText: select,
                          controller: passWordcmd,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            prefixIcon: const Icon(Icons.lock, color: Colors.orange),
                            suffixIcon: IconButton(
                              icon: select
                                  ? const Icon(Icons.visibility_off_sharp, color: Colors.orange)
                                  : const Icon(Icons.visibility, color: Colors.orange),
                              onPressed: () {
                                setState(() {
                                  select = !select;
                                });
                              },
                            ),
                            hintText: "Password",
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.white,width:1),
                            ),
                            errorStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a valid password';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            if (correctUser == userNamecmd.text && correctPass == passWordcmd.text) {
                              addDataTO(true);
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const HomeScreen()),
                              );
                            } else {
                              addDataTO(false);
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Invalid Username and Password, Please try again.")),
                              );
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent,
                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextButton(
                        onPressed: () {
                          addDataTO(true);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Signin()),
                          );
                        },
                        child: const Text(
                          "Not a user? Sign up now",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
