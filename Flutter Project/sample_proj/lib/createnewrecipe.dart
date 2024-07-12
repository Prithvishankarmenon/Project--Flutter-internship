
import 'package:flutter/material.dart';
import 'package:sample_proj/Home_Creen.dart';


class Createnewrecipe extends StatefulWidget {
  const Createnewrecipe({super.key});

  @override
  State<Createnewrecipe> createState() => _CreatenewrecipeState();
}

class _CreatenewrecipeState extends State<Createnewrecipe> {
 final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController kcalController = TextEditingController();
  final TextEditingController prepTimeController = TextEditingController();
  final TextEditingController imageUrlController = TextEditingController();
  List<TextEditingController> ingredientControllers = [];
  List<TextEditingController> stepControllers = [];

  bool isVeg = false;
  bool isNonVeg = false;

  void addIngredient() {
    setState(() {
      ingredientControllers.add(TextEditingController());
    });
  }

  void addStep() {
    setState(() {
      stepControllers.add(TextEditingController());
    });
  }

 
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}@override
  Widget build(BuildContext context) {
    var imageUrlController;
    var titleController;
    var descriptionController;
    var kcalController;
    var prepTimeController;
    var isNonVeg;
    var addStep;
    var isVeg;
    var ingredientControllers;
    var addIngredient;
    var stepControllers;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.close, color: Colors.orange),
            onPressed: () {
              // Close button logic
            },
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(255, 183, 178, 1.0), // Light pink background
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create Post",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Upload Cover Picture (URL)",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.brown,
                ),
              ),
              SizedBox(height: 8),
              TextField(
                controller: imageUrlController,
                decoration: InputDecoration(
                  labelText: "Image URL",
                  labelStyle: TextStyle(color: Colors.brown),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: "Title",
                  labelStyle: TextStyle(color: Colors.brown),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: descriptionController,
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: "Description",
                  labelStyle: TextStyle(color: Colors.brown),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: kcalController,
                      decoration: InputDecoration(
                        labelText: "kcal",
                        labelStyle: TextStyle(color: Colors.brown),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      controller: prepTimeController,
                      decoration: InputDecoration(
                        labelText: "Preparation time",
                        labelStyle: TextStyle(color: Colors.brown),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      title: Text("Non-Veg"),
                      value: isNonVeg,
                      onChanged: (bool? value) {
                        setState(() {
                          isNonVeg = value ?? false;
                         // if (isNonVeg) ;// Ensure only one is selected
                        });
                      },
                      activeColor: Colors.orange,
                      checkColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text("Veg"),
                      value: isVeg,
                      onChanged: (bool? value) {
                        setState(() {
                          isVeg = value ?? false;
                          if (isVeg) isNonVeg = false; // Ensure only one is selected
                        });
                      },
                      activeColor: Colors.orange,
                      checkColor: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                "Ingredients",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              Column(
                children: ingredientControllers
                    .map((controller) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: controller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
              SizedBox(height: 8),
              TextButton.icon(
                onPressed: addIngredient,
                icon: Icon(Icons.add, color: const Color.fromARGB(255, 19, 19, 18)),
                label: Text(
                  "Add Ingredient",
                  style: TextStyle(color: Colors.orange),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Steps",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              Column(
                children: stepControllers
                    .map((controller) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: controller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
              SizedBox(height: 8),
              TextButton.icon(
                onPressed: addStep,
                icon: Icon(Icons.add, color: Colors.orange),
                label: Text(
                  "Add Step",
                  style: TextStyle(color: Colors.orange),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()),);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    "Create Post",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  void setState(Null Function() param0) {
  }
  
 
  
