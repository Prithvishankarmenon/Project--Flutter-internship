import 'package:flutter/material.dart';
import 'package:sample_proj/Home_Creen.dart';

class Signing extends StatefulWidget {
  const Signing({super.key});
  @override
  State<Signing> createState() => _SigningState();
}
class _SigningState extends State<Signing> {
final TextEditingController userNamecmd = TextEditingController();
  final TextEditingController emailcmd = TextEditingController();
  final TextEditingController mobilecmd = TextEditingController();
  final TextEditingController passWordcmd = TextEditingController();
  bool select = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color.fromRGBO(251, 109, 59, 1.0), // Set background color to orange
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(), // Push the sign-up form to the bottom
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    
    Center(
            child: Image.network(
              "https://s3-alpha-sig.figma.com/img/906f/ef6b/74a76c1d0fa6e6b624d6a0dcb586ce03?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dNQVe-PXFBfrxQnt3LYVzLCk1wlRLJ5Bzx3tsXZSTPpEMiVn1HGvbjA5hXdHu0~Cz8EfpU~9EObtTjXTuV-ZAv5OpAJkKjcdIM~ly~qQ2KPDcYt1aQ6ZfrIO3lvBqpiac38o9PpHw2X5BKwQzzHg~WHDOGUMHKMuP4oCsyUuKJQgP0g~UrygbPIso1aNwr4oZTm~afD74hj7PBYlbj4wNL2kQmth4hWtrLtXF~HVOxxpYgSX~tqRkgeNOIqCTl3J3Ea4a-T8hoxG7PlYVDuNCXpFLeutVu7dykR4nELuZ8hF4OLZ1HVDVNPrK6P4K9jUyQH6C5AfNkMad4GU8hJe0Q__",
              width: 200, // Set desired width
              height: 200,)),
    const SizedBox(height: 16),
                    const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Create new account",
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
                          prefixIcon: const Icon(Icons.person, color: Colors.orange),
                          labelText: "Username",
                        ),
                      ),
                    ),
                   const  SizedBox(height: 16),
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
                               prefixIcon: const Icon(Icons.email, color: Colors.orange),
                          labelText: "Username or email id",
                        ),
                      ),
                    ),
              const  SizedBox(height: 16),
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
                          prefixIcon: const Icon(Icons.phone, color: Colors.orange),
                          labelText: "Mobile number",
                        ),
                      ),
                    ),
            const  SizedBox(height: 16),
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
                          prefixIcon: const Icon(Icons.lock, color:  Colors.orange),
                          suffixIcon: IconButton(
                            icon: select
                                ? const Icon(Icons.visibility_off_sharp, color: Colors.orange)
                                : const Icon(Icons.visibility, color:   Colors.orange),
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()),);
                      
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: true, // Replace with actual value
                          onChanged: (bool? value) {
                            // Handle checkbox state
                          },
                        ),
                        const Text(
                          "I agree to the ",
                          style: TextStyle(color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigate to terms and conditions
                          },
                          child: const Text(
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