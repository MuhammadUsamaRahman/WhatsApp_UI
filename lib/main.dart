import 'package:flutter/material.dart';
import 'package:whatapp_app/screens/chats.dart';
import 'package:whatapp_app/screens/splach.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
  );
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return splach();
  }
}















// import 'package:flutter/material.dart';
// import 'package:whatapp_app/screens/splach.dart';
//
// void main() {
//   runApp
//     ( MaterialApp(
//    home:  MyApp(),
//   ));
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//     home: splach(),
//
//     );
//   }
// }
