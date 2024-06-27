import 'package:shared_preferences/shared_preferences.dart';

Future<void> addDataTO() async{

  final prefs = await SharedPreferences.getInstance();
  prefs.setString("color", "I Like Black Color");
}

Future<void> getData() async{

final prefs = await SharedPreferences.getInstance();
String? data = prefs.getString("color");
print(data);
}