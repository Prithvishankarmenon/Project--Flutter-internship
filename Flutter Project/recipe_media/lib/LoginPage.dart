import 'package:flutter/material.dart';
bool select = true;
String Pass = "12345";
String user = "hi";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNamecmd = TextEditingController();
  final passWordcmd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN PAGE"),
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
                controller: passWordcmd,
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
              if (user == userNamecmd.text && Pass == passWordcmd.text) {
                addDataTO(true);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScree
()),
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