import 'package:flutter/material.dart';
import 'package:sample_project/functions.dart';
import 'package:sample_project/registerformmodalclass.dart';
import 'package:sample_project/register.dart';

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({super.key});

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  ModelForm? student;
  @override
  void initState() {
    super.initState();
    _loadStudent();
  }

  Future<void> _loadStudent() async {
    ModelForm? savedStudent = await getStudent();
    setState(() {
       student = savedStudent;
    });
  }
  Widget build(BuildContext context) {
    return  Scaffold(

        appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.arrow_back),
                          onPressed: (){
                          Navigator.pop(context);}
            )),
             body: student == null
          ? const Center(child: Text('No student data available'))
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${student!.name}'),
                  Text('Address: ${student!.address}'),
                  Text('Division: ${student!.dob}'),
                  Text('Roll no: ${student!.roll_no}'),
                ],
            )
            )
    );
    
  }
}

