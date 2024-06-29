import 'dart:convert';

import 'package:sample_project/registerformmodalclass.dart';
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

Future<void> saveStudent(ModelForm student) async {
  final prefs = await SharedPreferences.getInstance();
  String jsonString = jsonEncode(student.toJson());
  print(jsonString);
  await prefs.setString('student_data', jsonString);
}

Future<ModelForm?> getStudent() async {
  final prefs = await SharedPreferences.getInstance();
  String? jsonString = prefs.getString('student_data');
  if (jsonString != null) {
    Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return ModelForm.fromJson(jsonMap);
  }
  return null;
}