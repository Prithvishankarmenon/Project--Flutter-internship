import 'package:flutter/material.dart';
import 'package:sample_project/functions.dart';
import 'package:sample_project/image-screen.dart';
import 'package:sample_project/login_screen.dart';

bool select = true;

class LogInst extends StatefulWidget {
  const LogInst({super.key});

  @override
  State<LogInst> createState() => _LogInState();
}

class _LogInState extends State<LogInst> {
  String Pass = "123456";
  String user = "hi123";

  final userNamecmd = TextEditingController();
  final passNamecmd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN page Example"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            controller: userNamecmd,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.portrait),
                suffixIcon: Icon(Icons.visibility),
                labelText: "USER NAME"),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
                obscureText: select,
                controller: passNamecmd,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        icon: select
                            ? Icon(Icons.visibility_off_sharp)
                            : Icon(Icons.visibility),
                        onPressed: () {
                          setState(() {
                            select = !select;
                          });
                        }),
                    labelText: "PASSWORD"))),
        ElevatedButton(
            onPressed: () async {
              if (user == userNamecmd.text && Pass == passNamecmd.text) {
                addDataTO(true);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              } else {
                addDataTO(false);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Invalid Username and Password ")));
              }
              
            },
            child: Text("Log in "))
      ]),
    );
  }
}
