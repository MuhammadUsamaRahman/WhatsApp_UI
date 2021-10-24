// import 'package:flutter/src/material/floating_action_button.dart';
// import 'package:flutter/material.dart';
// class Deshboard extends StatefulWidget {
//   @override
//   _DeshboardState createState() => _DeshboardState();
// }
//
// class _DeshboardState extends State<Deshboard> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(length:4, // child: child)bController(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("WhatApp", style: TextStyle(color: Colors.white)),
//           backgroundColor: Colors.greenAccent,
//           bottom: TabBar(
//             tabs: [
//               Tab(icon: Icon(Icons.camera_alt, color: Colors.white,)),
//               Tab(text:("CHATS")),
//               Tab(text: ("STATUS")),
//               Tab(text: ("CALLS")),
//             ],
//
//           ),
//
//           actions: [
//             // CircleAvatar(radius: 12,
//             //   child:
//             Icon(Icons.search, color: Colors.white),
//
//
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 5),
//               //child: CircleAvatar(
//               // radius: (12),
//               child: Icon(Icons.more, color: Colors.white),
//
//             ),
//
//
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.message),
//           backgroundColor: Colors.greenAccent, onPressed: () {  },
//         ),
//         body: TabBarView(
//           children: [
//             Container(
//               child:Text("Camera",style: TextStyle(),),),
//             Center(child:Text("Chats",),),
//             Center(child: Text("Status")),
//             Center(child: Text ("Calls")),
//
//
//           ],
//
//         ),
//       ),
//     );
//   }
// }