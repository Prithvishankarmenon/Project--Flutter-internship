
import 'package:flutter/material.dart';

class Veiwrecipe extends StatefulWidget {
  const Veiwrecipe({super.key});

  @override
  State<Veiwrecipe> createState() => _VeiwrecipeState();
}

class _VeiwrecipeState extends State<Veiwrecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.arrow_back),
                          onPressed: (){
                          Navigator.pop(context);}
            ))
    );
  }
}