import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

Future<void> addDataTO(bool isLogedIn) async{

  final prefs = await SharedPreferences.getInstance();
  prefs.setBool("isUserLogedIn", isLogedIn);

}

Future<bool> getData() async{

final prefs = await SharedPreferences.getInstance();
bool? data = prefs.getBool("isUserLogedIn");
if(data==null){
data=false;}

return data;
} 



class SharedPrefsHelper {
  static const String recipesKey = 'recipes';

  static Future<void> saveRecipe(Map<String, dynamic> recipe) async {
    final prefs = await SharedPreferences.getInstance();
    final recipes = prefs.getStringList(recipesKey) ?? [];
    recipes.add(jsonEncode(recipe));
    await prefs.setStringList(recipesKey, recipes);
  }

  static Future<List<Map<String, dynamic>>> getRecipes() async {
    final prefs = await SharedPreferences.getInstance();
    final recipes = prefs.getStringList(recipesKey) ?? [];
    return recipes.map((recipe) => jsonDecode(recipe) as Map<String, dynamic>).toList();
  }
}