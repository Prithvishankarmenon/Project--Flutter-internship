// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 131, 108, 1),
        leading: Icon(Icons.arrow_back, color: Colors.white60),
        title: Text('WhatsApp',
            style: TextStyle(
                fontFamily: "courrier",
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        actions: [
          // const Card(child:Padding(child:Icons.search, color: Colors.white60,),padding:EdgeInsets.only(right: 20.0)),
          Icon(Icons.more_vert, color: Colors.white60)
        ],
      ),
      // body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // children: [
        //   Text("Hello World ",
        // style: TextStyle(
        //   fontSize: 30,
        // )),
        //   Text("Hello World ",
        // style: TextStyle(
        //   fontSize: 30,
        // )),
        //   Text("Hello World ",
        // style: TextStyle(
        //   fontSize: 30,
        // ))
        // ],
      //   children: [
      //     ListTile(
      //         leading: Icon(
      //           Icons.person,
      //           size: 40,
      //         ),
      //         title: Text("Person1",
      //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      //         subtitle: Text("Hey there! I am using WhatsApp"),
      //         trailing: Column(children: [
      //           Text(
      //             "10:00 AM",
      //             style: TextStyle(
      //                 color: Colors.green.shade400,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 12),
      //           ),
      //           CircleAvatar(radius: 14,backgroundColor: Colors.green,child:Text(
      //             "1",
      //             style: TextStyle(
      //                 color: Colors.white,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 16),
      //           ))
      //         ],
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         )),
      //     ListTile(
      //         leading: Icon(
      //           Icons.person,
      //           size: 40,
      //         ),
      //         title: Text("Person2",
      //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      //         subtitle: Text("Hey there! I am using WhatsApp"),
      //         trailing: Column(children: [
      //           Text(
      //             "10:00 AM",
      //             style: TextStyle(
      //                 color: Colors.green.shade400,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 12),
      //           ),
      //           CircleAvatar(radius: 14,backgroundColor: Colors.green,child:Text(
      //             "1",
      //             style: TextStyle(
      //                 color: Colors.white,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 16),
      //           ))
      //         ],
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         )),
      //     ListTile(
      //         leading: Icon(
      //           Icons.person,
      //           size: 40,
      //         ),
      //         title: Text("Person3",
      //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      //         subtitle: Text("Hey there! I am using WhatsApp"),
      //         trailing: Column(children: [
      //           Text(
      //             "10:00 AM",
      //             style: TextStyle(
      //                 color: Colors.green.shade400,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 12),
      //           ),
      //           CircleAvatar(radius: 14,backgroundColor: Colors.green,child:Text(
      //             "1",
      //             style: TextStyle(
      //                 color: Colors.white,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 16),
      //           ))
      //         ],
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         )),
      //     ListTile(
      //         leading: Icon(
      //           Icons.person,
      //           size: 40,
      //         ),
      //         title: Text("Person4",
      //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      //         subtitle: Text("Hey there! I am using WhatsApp"),
      //         trailing: Column(children: [
      //           Text(
      //             "10:00 AM",
      //             style: TextStyle(
      //                 color: Colors.green.shade400,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 12),
      //           ),
      //           CircleAvatar(radius: 14,backgroundColor: Colors.green,child:Text(
      //             "1",
      //             style: TextStyle(
      //                 color: Colors.white,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 16),
      //           ))
      //         ],
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         )),
      //     ListTile(
      //         leading: Icon(
      //           Icons.person,
      //           size: 40,
      //         ),
      //         title: Text("Person5",
      //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      //         subtitle: Text("Hey there! I am using WhatsApp"),
      //         trailing: Column(children: [
      //           Text(
      //             "10:00 AM",
      //             style: TextStyle(
      //                 color: Colors.green.shade400,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 12),
      //           ),
      //           CircleAvatar(radius: 14,backgroundColor: Colors.green,child:Text(
      //             "1",
      //             style: TextStyle(
      //                 color: Colors.white,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 16),
      //           ))
      //         ],
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         )),
      //     ListTile(
      //         leading: Icon(
      //           Icons.person,
      //           size: 40,
      //         ),
      //         title: Text("Person6",
      //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      //         subtitle: Text("Hey there! I am using WhatsApp"),
      //         trailing: Column(children: [
      //           Text(
      //             "10:00 AM",
      //             style: TextStyle(
      //                 color: Colors.green.shade400,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 12),
      //           ),
      //           CircleAvatar(radius: 14,backgroundColor: Colors.green,child:Text(
      //             "1",
      //             style: TextStyle(
      //                 color: Colors.white,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 16),
      //           ))
      //         ],
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         )),
      //     ListTile(
      //         leading: Icon(
      //           Icons.person,
      //           size: 40,
      //         ),
      //         title: Text("Person7",
      //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      //         subtitle: Text("Hey there! I am using WhatsApp"),
      //         trailing: Column(children: [
      //           Text(
      //             "10:00 AM",
      //             style: TextStyle(
      //                 color: Colors.green.shade400,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 12),
      //           ),
      //           CircleAvatar(radius: 14,backgroundColor: Colors.green,child:Text(
      //             "1",
      //             style: TextStyle(
      //                 color: Colors.white,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 16),
      //           ))
      //         ],
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         )),
      //     ListTile(
      //         leading: Icon(
      //           Icons.person,
      //           size: 40,
      //         ),
      //         title: Text("Person8",
      //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      //         subtitle: Text("Hey there! I am using WhatsApp"),
      //         trailing: Column(children: [
      //           Text(
      //             "10:00 AM",
      //             style: TextStyle(
      //                 color: Colors.green.shade400,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 12),
      //           ),
      //           CircleAvatar(radius: 14,backgroundColor: Colors.green,child:Text(
      //             "1",
      //             style: TextStyle(
      //                 color: Colors.white,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 16),
      //           ))
      //         ],
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         )),
      //          ListTile(
      //         leading: Icon(
      //           Icons.person,
      //           size: 40,
      //         ),
      //         title: Text("Person8",
      //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      //         subtitle: Text("Hey there! I am using WhatsApp"),
      //         trailing: Column(children: [
      //           Text(
      //             "10:00 AM",
      //             style: TextStyle(
      //                 color: Colors.green.shade400,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 12),
      //           ),
      //           CircleAvatar(radius: 14,backgroundColor: Colors.green,child:Text(
      //             "1",
      //             style: TextStyle(
      //                 color: Colors.white,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 16),
      //           ))
      //         ],
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         )),
          
      //   ],
      // ),



      body: Container (
        width: 700,
        height: 500,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.blue,border: Border.all(color: Colors.red,width: 8)),
        child: ListView(
          children: [
            Center(child: Text("LAB RULES TO FOLLOW ",style: TextStyle(color: Colors.white,fontSize: 20),))
          ,
          Text("1. complete ......................",style: TextStyle(color: Colors.white,fontSize: 16),)
          ,
          Text("2. complete ......................",style: TextStyle(color: Colors.white,fontSize: 16),)
          ,
          Text("3. complete ......................",style: TextStyle(color: Colors.white,fontSize: 16),)
          ,
          Text("4. complete ......................",style: TextStyle(color: Colors.white,fontSize: 16),)
          ,
          Text("5. complete ......................",style: TextStyle(color: Colors.white,fontSize: 16),)
          ],
        ) 

          
        
        
      )
    )  ;
  }
}