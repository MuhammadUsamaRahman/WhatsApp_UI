import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatapp_app/screens/chats.dart';
class splach extends StatefulWidget {
  @override
  _splachState createState() => _splachState();
}

class _splachState extends State<splach> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),
    ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context ) => chatsall() )));
  }



  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Image.asset("assets/whatapp Icon2.png"),
            SizedBox(
              height: 150,
            ),
            Text("from"),
            SizedBox(
              height: 12,
            ),
            Text("FACEBOOK",style :TextStyle( color: Colors.greenAccent,)
            )

          ],
        ),
      ),
    );



  }
}


























// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:whatapp_app/screens/Deshboard.dart';
// class splach extends StatefulWidget {
//   @override
//   _splachState createState() => _splachState();
// }
//
// class _splachState extends State<splach> {
//   @override
//   void initState(){
//     super.initState();
//     Timer(Duration(seconds: 5),
//     ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context ) => Deshboard() )));
//   }
//
//
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: Center(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 250,
//             ),
//             Image.asset("assets/whatapp Icon2.png"),
//             SizedBox(
//               height: 150,
//             ),
//             Text("from"),
//             SizedBox(
//               height: 12,
//             ),
//             Text("FACEBOOK",style :TextStyle( color: Colors.greenAccent,)
//             )
//
//           ],
//         ),
//       ),
//     );
//
//
//
//   }
// }
