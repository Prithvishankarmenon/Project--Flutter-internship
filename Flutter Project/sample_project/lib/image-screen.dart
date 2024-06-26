import 'package:flutter/material.dart';

class Imagescree extends StatelessWidget {
  const Imagescree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JYOTHI ENGENEERING COLLEGE",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
      ) ,
      body: Column(
        children: [
          Image.network("https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1707920217641.jpg")
        ],
      ),
    );
  }
}