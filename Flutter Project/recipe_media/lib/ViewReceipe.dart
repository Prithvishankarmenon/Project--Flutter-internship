import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile', style: TextStyle(color: Colors.orange, fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.orange),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile_picture.png'), // replace with your image asset
              ),
              SizedBox(height: 16),
              Text(
                'Alex Emmatty',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Food Enthusiast',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('230', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('Recipes', style: TextStyle(fontSize: 16, color: Colors.grey)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('9.4K', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('Followers', style: TextStyle(fontSize: 16, color: Colors.grey)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('565', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('Following', style: TextStyle(fontSize: 16, color: Colors.grey)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Mastering the trades!',
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: Text('Edit Profile'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Divider(color: Colors.orange, thickness: 1),
              SizedBox(height: 16),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  RecipeCard(
                    image: 'assets/hawaiian_pizza.png', // replace with your image asset
                    title: 'Hawaiian Pizza',
                    description: 'Controversial but beloved, this pizza is topped with tomato sauce, mozzarella cheese, ham, and pineapple.',
                    likes: '3.1k',
                    comments: '256',
                  ),
                  RecipeCard(
                    image: 'assets/tomato_soup.png', // replace with your image asset
                    title: 'Tomato Soup',
                    description: 'Smooth and tangy, often served with a grilled cheese sandwich, made from tomatoes, broth, and seasonings.',
                    likes: '102',
                    comments: '5',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle, size: 48),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 4, // Set the index to Profile
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String likes;
  final String comments;

  RecipeCard({
    required this.image,
    required this.title,
    required this.description,
    required this.likes,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.orange, size: 16),
                      SizedBox(width: 4),
                      Text(likes, style: TextStyle(fontSize: 14, color: Colors.grey)),
                      SizedBox(width: 16),
                      Icon(Icons.comment, color: Colors.orange, size: 16),
                      SizedBox(width: 4),
                      Text(comments, style: TextStyle(fontSize: 14, color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
