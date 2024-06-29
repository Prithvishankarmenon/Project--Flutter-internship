import 'package:flutter/material.dart';
import 'package:sample_project/registerformmodalclass.dart';
import 'package:sample_project/studentlist.dart';
import 'package:sample_project/functions.dart';


class registert extends StatefulWidget {
  const registert({super.key});

  @override
  State<registert> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<registert> {
  final namecmd = TextEditingController();
  final addresscmd = TextEditingController();
final dobcmd = TextEditingController();
  final rollnocmd = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Text("REGISTARATION FORM",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: namecmd,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter the name.")),
            )
              ,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: addresscmd,
                          decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter the address.")),
              )
              ,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: dobcmd,
                          decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter the DOB.")),
              )
              ,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: rollnocmd,
                          decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter the roll no.")),
              ),
              ElevatedButton(onPressed: ()async {
                ModelForm student = ModelForm(namecmd.text, addresscmd.text, dobcmd.text, rollnocmd.text);
                await saveStudent(student);
              }, child: Text("Register")),

              ElevatedButton(onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => StudentListScreen()));
              }, child: Text("view"))
          ],
        ),
      )

      ,
    );
  }
}