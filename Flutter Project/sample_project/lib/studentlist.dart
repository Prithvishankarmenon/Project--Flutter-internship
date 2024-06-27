import 'package:flutter/material.dart';

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({super.key});

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.arrow_back),
                          onPressed: (){
                          Navigator.pop(context);}
            )));
  }
}

