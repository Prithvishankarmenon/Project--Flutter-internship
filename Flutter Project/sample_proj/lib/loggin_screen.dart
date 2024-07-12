import 'package:flutter/material.dart';
import 'package:sample_proj/Home_Creen.dart';
import 'package:sample_proj/functions.dart';
import 'package:sample_proj/signing.dart';

bool select = true;
// ignore: non_constant_identifier_names
String Pass = "12345";
String user = "hi";
class LogginpagState extends StatefulWidget {
  const LogginpagState({super.key});

  @override
  State<LogginpagState> createState() =>_LogginpagState();
}

class _LogginpagState extends State<LogginpagState> {
  
   final userNamecmd = TextEditingController();
  final passWordcmd = TextEditingController();
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor:const  Color.fromRGBO(251,109,59, 1.0), // Set background color to orange
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(), // Push the login form to the bottom
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [

                       Center(
                          child: Image.network(
                           "https://s3-alpha-sig.figma.com/img/906f/ef6b/74a76c1d0fa6e6b624d6a0dcb586ce03?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dNQVe-PXFBfrxQnt3LYVzLCk1wlRLJ5Bzx3tsXZSTPpEMiVn1HGvbjA5hXdHu0~Cz8EfpU~9EObtTjXTuV-ZAv5OpAJkKjcdIM~ly~qQ2KPDcYt1aQ6ZfrIO3lvBqpiac38o9PpHw2X5BKwQzzHg~WHDOGUMHKMuP4oCsyUuKJQgP0g~UrygbPIso1aNwr4oZTm~afD74hj7PBYlbj4wNL2kQmth4hWtrLtXF~HVOxxpYgSX~tqRkgeNOIqCTl3J3Ea4a-T8hoxG7PlYVDuNCXpFLeutVu7dykR4nELuZ8hF4OLZ1HVDVNPrK6P4K9jUyQH6C5AfNkMad4GU8hJe0Q__",
                              width: 200, // Set desired width
                               height: 200,)),
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
                      child: TextField(
                        controller: userNamecmd,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          prefixIcon: const Icon(Icons.portrait, color: Colors.orange),
                          labelText: "Username or email id",
                        ),
                      ),
                    ),
                     const SizedBox(height: 16),
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
                          prefixIcon: const Icon(Icons.lock, color: Colors.orange),
                          suffixIcon: IconButton(
                            icon: select
                                ? const Icon(Icons.visibility_off_sharp, color: Colors.orange)
                                : const Icon(Icons.visibility, color:  Colors.orange),
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
                    const SizedBox(height: 24),
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
                            const SnackBar(content: Text("Invalid Username and Password, Please try again.")),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
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
                            MaterialPageRoute(builder: (context) => const Signing()),);
                      },
                      child: const Text(
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