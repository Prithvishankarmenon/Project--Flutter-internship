import 'package:flutter/material.dart';
import 'package:recipe_media/Functions.dart';
import 'package:recipe_media/ViewReceipe.dart';


class CreateNewRecipe extends StatefulWidget {
  const CreateNewRecipe({super.key});

  @override
  _CreateNewRecipeState createState() => _CreateNewRecipeState();
}

class _CreateNewRecipeState extends State<CreateNewRecipe> {
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

  Future<void> saveRecipe() async {
    List<String> ingredients = ingredientControllers.map((controller) => controller.text).toList();
    List<String> steps = stepControllers.map((controller) => controller.text).toList();

    Map<String, dynamic> recipe = {
      'title': titleController.text,
      'description': descriptionController.text,
      'kcal': kcalController.text,
      'prepTime': prepTimeController.text,
      'imageUrl': imageUrlController.text,
      'isVeg': isVeg,
      'isNonVeg': isNonVeg,
      'ingredients': ingredients,
      'steps': steps,
    };

    await SharedPrefsHelper.saveRecipe(recipe);

    // Navigate back to ProfilePage
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ProfilePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
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
              Navigator.pop(context);
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
                          if (isNonVeg) isVeg = false; // Ensure only one is selected
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
                icon: Icon(Icons.add, color: Colors.orange),
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
                  onPressed: saveRecipe,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
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
}
