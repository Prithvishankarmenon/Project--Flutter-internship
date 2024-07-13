import 'package:flutter/material.dart';
import 'package:recipe_media/CreateNewReceipe.dart'; // Assuming correct import path
import 'package:recipe_media/Functions.dart'; // Assuming this file contains addDataTO function
import 'package:recipe_media/Splash_Screen.dart'; // Assuming correct import path
import 'package:recipe_media/ViewReceipe.dart'; // Assuming correct import path

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove default back button
        backgroundColor: Color.fromRGBO(251, 109, 59, 1.0), // Orange color
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                // Handle sidebar button action
              },
              icon: Icon(Icons.menu, color: Colors.white), // Sidebar icon
            ),
            SizedBox(width: 10), // Space between the icon and text
            Text(
              "Welcome",
              style: TextStyle(
                 
                color: Colors.white, // Text color of title
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await addDataTO(false);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SplashScreen()),
              );
            },
            icon: const Icon(Icons.power_settings_new), // Power button icon
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(251, 109, 59, 1.0), // Orange color
      body: Container(
        color: Colors.orange, // Orange color for body
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your main content here
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateNewRecipe()),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.white, // Orange color
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        color: Color.fromRGBO(251, 109, 59, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                primary: Colors.white, // White background
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "View Existing Recipes",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(251, 109, 59, 1.0), // Orange color
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
