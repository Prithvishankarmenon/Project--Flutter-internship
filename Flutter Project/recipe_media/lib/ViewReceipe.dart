import 'package:flutter/material.dart';

class viewReceipe extends StatefulWidget {
  const viewReceipe({super.key});

  @override
  State<viewReceipe> createState() => _viewReceipeState();
}

class _viewReceipeState extends State<viewReceipe> {
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