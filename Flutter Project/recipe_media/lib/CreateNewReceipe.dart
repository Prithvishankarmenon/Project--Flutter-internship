import 'package:flutter/material.dart';

class CreateNewReceipe extends StatelessWidget {
  const CreateNewReceipe({super.key});

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