import 'package:flutter/material.dart';
import 'package:sample_project/image-screen.dart';
  bool select = true;
class LogInst extends StatefulWidget {
  const LogInst({super.key});

  @override
  State<LogInst> createState() => _LogInState();
}

class _LogInState extends State<LogInst> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN page Example"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Imagescree()),
              );
            },
            child: Text("Log in "))
      ]),
    );
  }
}
