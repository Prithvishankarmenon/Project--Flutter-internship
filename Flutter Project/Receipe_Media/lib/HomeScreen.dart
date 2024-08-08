// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously, sized_box_for_whitespace, use_key_in_widget_constructors, use_super_parameters

import 'package:flutter/material.dart';
import 'package:recipe_media/CreateNewReceipe.dart';
import 'package:recipe_media/Functions.dart';
import 'package:recipe_media/ProfilePage.dart';
import 'package:recipe_media/SupabaseFunctions.dart';
import 'package:recipe_media/burger.dart';
import 'package:recipe_media/cake.dart';
import 'package:recipe_media/chef.dart';
import 'package:recipe_media/pizza.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:recipe_media/ViewReceipe.dart';
import 'LoginPage.dart';

void main() {
  runApp(MyApp());
}

final _data = Supabase.instance.client
        .from('userRecipe_duplicate')
        .stream(primaryKey: ["id"]);

Stream<List<Map<String, dynamic>>> recipeSearchResult(String query) {
  final stream = Supabase.instance.client
      .from('userRecipe')
      .select('*')
      .like('title', '%$query%')
      .asStream();
  // .stream(primaryKey: ['id']).eq('title', query);
  return stream;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  String selectedField = 'name'; // Default search field
  Stream<List<Map<String, dynamic>>>? searchResults;
  List<Map<String, dynamic>> currentResults = [];

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  Future<bool?> showLogoutConfirmationDialog(BuildContext context) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible:
          false, // Dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Logout'),
          content: Text('Are you sure you want to logout?'),
          actions: <Widget>[
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context)
                    .pop(false); // Returns false when "No" button is pressed
              },
            ),
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                logoutCurrentUser();
                Navigator.of(context)
                    .pop(true); // Returns true when "Yes" button is pressed
              },
            ),
          ],
        );
      },
    );
  }

  void _onSearchChanged(String query) {
    setState(() {
      searchResults = recipeSearchResult(query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color.fromRGBO(255, 236, 227, 1.0),
          width: 393,
          height: 852,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ListView(
              padding: EdgeInsets.only(top: 40),
              children: [
                Container(
                  width: 100,
                  height: 105,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hello",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromRGBO(251, 110, 61, 1.0),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          StreamBuilder(stream: _data,
                          builder: (context, snapshot) => 
                          Text(getCurrentUserName(),
                              style: TextStyle(
                                color: Color.fromRGBO(41, 16, 7, 1.0),
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              )),),
                          Text("What do you crave for today?",
                              style: TextStyle(
                                color: Color.fromRGBO(251, 110, 61, 1.0),
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, bottom: 30),
                        child: IconButton(
                          onPressed: () async {
                            bool? confirmed =
                                await showLogoutConfirmationDialog(context);
                            if (confirmed == true) {
                              addDataTO(false);
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            }
                          },
                          icon: Icon(
                            Icons.logout,
                            color: Color.fromRGBO(251, 110, 61, 1.0),
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 236, 227, 1.0),
                  ),
                ),
                Column(
                  children: [
                    TextField(
                      controller: _searchController,
                      onChanged: _onSearchChanged,
                      decoration: InputDecoration(
                        hoverColor: Color.fromRGBO(251, 110, 61, 1.0),
                        floatingLabelStyle: TextStyle(
                          color: Color.fromRGBO(251, 110, 61, 1.0),
                        ),
                        hintText: "Search for recipes",
                        labelText: "Search",
                        labelStyle: TextStyle(fontSize: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13)),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                    if (searchResults != null)
                      StreamBuilder<List<Map<String, dynamic>>>(
                        stream: searchResults,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData ||
                              snapshot.data!.isEmpty) {
                            return Text('No results found');
                          } else if (_searchController.text.isEmpty) {
                            return SizedBox(width: 0,height: 0,);
                          } else {
                            currentResults = snapshot.data!;
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: currentResults.length,
                              itemBuilder: (context, index) {
                                return ModifiedProfileCard(
                                    context, currentResults[index]);
                              },
                            );
                          }
                        },
                      ),
                  ],
                ),
                heading("Featured Chef"),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Stack(
                    children: [
                      Card(
                        elevation: 4,
                        color: Color.fromRGBO(251, 110, 61, 1.0),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 15, bottom: 15),
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GordonRamsayApp()),
                              );
                            },
                            trailing: SizedBox(
                              width: 100,
                              height: 400,
                            ),
                            title: Text(
                              'Chef Gordon',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                            subtitle: Text(
                              'a home chef gained renown by crafting homely, protein-rich meals for gym enthusiasts',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Image(
                          image: AssetImage('assets/images/chef.png'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                    ],
                  ),
                ),
                heading("Craving Categories"),
                SingleChildScrollView(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      categoriesCard('assets/images/cake.png', 'Cake', context,
                          BlackForestCakeScreen()),
                      categoriesCard('assets/images/burger.png', 'Burger',
                          context, BurgerRecipeScreen()),
                      categoriesCard('assets/images/pizza.png', 'Pizza',
                          context, PizzaRecipeScreen()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                selectedItemColor: Colors.red,
                unselectedItemColor: Colors.grey,
                currentIndex: _selectedIndex,
                onTap: (selectedIndex) {
                  if (selectedIndex == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  }
                },
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -30,
            left: MediaQuery.of(context).size.width / 2 - 30,
            child: Center(
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.deepOrange,
                child: IconButton(
                  icon: Icon(Icons.add, size: 40, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateNewRecipe()),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget categoriesCard(
      String path, String name, BuildContext context, Widget page) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image(image: AssetImage(path), width: 75, height: 75),
              Text(
                name,
                style: TextStyle(
                    fontSize: 20, color: Color.fromRGBO(41, 16, 7, 1.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container heading(String title) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.orange, width: 2)),
                ),
                child: Text(
                  title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color.fromRGBO(41, 16, 7, 1.0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 236, 227, 1.0),
      ),
    );
  }
}
