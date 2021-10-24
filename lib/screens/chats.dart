import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/nested_scroll_view.dart';
import 'package:flutter/widgets.dart';
//void main() =>
 //   runApp(MyApp());
class chatsall extends StatefulWidget {
  @override
  _chatsallState createState() => _chatsallState();
}
 class _chatsallState extends State<chatsall> //with SingleTickerProviderStateMixin
 {
   late TabController _tabController;
  // late ScrollController _scrollController;
  // void initState(){
     //_tabController = new TabController(length: 4,// vsync: this);
     //_scrollController =new ScrollController();
   //}
   @override
   Widget build(BuildContext context) {
     return DefaultTabController(length: 4,
      // MaterialApp(
       child: Scaffold(
         body:NestedScrollView(
           //controller: _scrollController,
           headerSliverBuilder:(BuildContext context, bool) {
             return <Widget>[
               SliverAppBar(
                 actions: [
                   Icon(Icons.search),
                   //Container(width: 10.0,), //it also be like that
                   SizedBox(width: 2.0,),
                   Icon(Icons.more_vert),
                   // Container(width: 10,), it also be like that
                 ],
                 pinned: true,
                 floating: true,
                 // centerTitle: false,
                 backgroundColor: Color(0xff075e54),
                 //leading:
                 title: Text("WhatApp"),
                 bottom: TabBar(
                     indicatorWeight: 3.0,
                     indicatorColor: (Colors.white),
                     tabs: [
                       Tab(
                         child: Icon(Icons.camera_alt),
                       ),
                       Tab(
                         child: Text("CHATS"),),
                       Tab(
                         child: Text("STATUS"),),
                       Tab(
                         child: Text("CALLS"),),
                     ]
                 ),

               ),
             ];
           },
           body: TabBarView(
            // controller: _tabController,
             children: [
               Text("camera"),

               chats(),
               status(),
               _calls(),
             ],
           ),
         ),

       ),
     );



   }
 }

class chats extends StatefulWidget {
  @override
  _chatsState createState() => _chatsState();
}

class _chatsState extends State<chats> {

  List<String> name =[
    'usama',
    'sanan',
    'suleiman',
    'mussa',
    'anas',
    'usama',
    'sanan',
    'suleiman',
    'mussa',
    'anas','usama',
    'sanan',
    'suleiman',
    'mussa',
    'anas'
  ];
  List<String> text =[
    'hello',
    'sanga ya',
    'khair da',
    'sai da bia gup lagu',
    'bia call uka',
    'hello',
    'sanga ya',
    'khair da',
    'sai da bia gup lagu',
    'bia call uka', 'hello',
    'sanga ya',
    'khair da',
    'sai da bia gup lagu',
    'bia call uka',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.message),
          backgroundColor: Colors.green,
          onPressed: (){}),
      body: Container(
        child: ListView.builder(
            itemCount: name.length ,
            itemBuilder: (context ,index){
              return Column(
                children:<Widget>[
                  ListTile(

                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://www.google.com/imgres?imgurl=https%3A%2F%2Fpbs.twimg.com%2Fprofile_images%2F1121967020059308032%2FibgoqOJj_400x400.jpg&imgrefurl=https%3A%2F%2Ftwitter.com%2Fmufti_kakakhail&tbnid=1A7D9dU3UzmQ9M&vet=12ahUKEwi53oPUwcbzAhVCYBoKHepKD4YQMygBegUIARCPAQ..i&docid=-7q6LgJSuQX7wM&w=400&h=400&q=adnan%20kakakhail&ved=2ahUKEwi53oPUwcbzAhVCYBoKHepKD4YQMygBegUIARCPAQ'),
                        //Image.asset('assets/whatapp Icon2.png'),
                       //child: Image.asset("assets/whatapp Icon2.png"),
                      ),
                      title :Text(name[index]),
                      subtitle: Text(text[index]),
                      trailing: Text("10:00 AM")


                  ),
                ],
              );

            }
        ),
      ),
    );


  }
}
class status extends StatefulWidget {
  @override
  _statusState createState() => _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.camera_alt),
          backgroundColor: Colors.greenAccent,
          onPressed: (){}),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://www.google.com/imgres?imgurl=https%3A%2F%2Fpbs.twimg.com%2Fprofile_images%2F1323145759810674688%2FpuDQfYek_400x400.jpg&imgrefurl=https%3A%2F%2Ftwitter.com%2Fkakahailfanpage&tbnid=hEb0gUo0owqY-M&vet=12ahUKEwi53oPUwcbzAhVCYBoKHepKD4YQMygLegUIARClAQ..i&docid=0s8e-JzcAipTwM&w=400&h=400&q=adnan%20kakakhail&ved=2ahUKEwi53oPUwcbzAhVCYBoKHepKD4YQMygLegUIARClAQ"),
              ),
              title: Text('MyStatus'),
              subtitle: Text("Tab to Add Status update"),

            ),
            Container(
              color: Colors.grey[200],
              width: MediaQuery.of(context).size.width,
              height: 20.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text("Viewed Updates", style: TextStyle(color: Colors.green[700]),),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(""),
              ),
              title: Text('MyStatus'),
              subtitle: Text("Tab to Add Status update"),),

            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(""),
              ),
              title: Text('MyStatus'),
              subtitle: Text("Tab to Add Status update"),),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(""),
              ),
              title: Text('MyStatus'),
              subtitle: Text("Tab to Add Status update"),),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(""),
              ),
              title: Text('MyStatus'),
              subtitle: Text("Tab to Add Status update"),),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(""),
              ),
              title: Text('MyStatus'),
              subtitle: Text("Tab to Add Status update"),),
          ],
        ),
      ),
    );
  }
}


// class call extends StatefulWidget {
//   @override
//   _callState createState() => _callState();
// }
//
// class _callState extends State<call> {
//   List<String> callname =[
//     'ansa',
//     'mussa',
//     'sulemian',
//     'sanan',
//     'usama',
//   ];
//   List<String> time = [
//     '(3)30 minutes ago'
//         'Today,4:23 AM',
//     'Yesterday,1:28 AM',
//     'October 20,5:56 PM',
//     '(5) November 30,5:30',
//   ];
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.greenAccent,
//         child: Icon(Icons.call),
//         onPressed: null, ),
//       body: Container(
//         child: ListView.builder(
//             itemCount: callname.length ,
//             itemBuilder: (context, index)
//             {return ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: NetworkImage("https://www.google.com/imgres?imgurl=https%3A%2F%2Flookaside.fbsbx.com%2Flookaside%2Fcrawler%2Fmedia%2F%3Fmedia_id%3D100050434811931&imgrefurl=https%3A%2F%2Fwww.facebook.com%2Fmuftiadnankakakhail&tbnid=53MN40rwPnefFM&vet=12ahUKEwi53oPUwcbzAhVCYBoKHepKD4YQMygAegUIARCNAQ..i&docid=lEe3SHCTNhhkhM&w=774&h=774&q=adnan%20kakakhail&ved=2ahUKEwi53oPUwcbzAhVCYBoKHepKD4YQMygAegUIARCNAQ"),
//
//               ),
//               title: Text(callname[index]),
//               subtitle: Row( children:[Icon(Icons.call_missed_outgoing, color: Colors.red,),Text(time[index])],),
//               trailing: Icon(Icons.call,color: Colors.greenAccent,),
//
//             );
//
//             }),
//       ),
//     );
//
//   }
// }
class _calls extends StatefulWidget {
  @override
  __callsState createState() => __callsState();
}

class __callsState extends State<_calls> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(""),
          ),
          title: Text('usama'),
          subtitle: Row(children: [Icon(Icons.call_made_outlined, color: Colors.green,),Text('Today 3:56 AM')],),
          trailing: Icon(Icons.call,color: Colors.green,),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(""),
          ),
          title: Text('usama'),
          subtitle: Row(children: [Icon(Icons.call_made_outlined, color: Colors.green,),Text('Today 3:56 AM')],),
          trailing: Icon(Icons.call,color: Colors.green,),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(""),
          ),
          title: Text('sanan'),
          subtitle: Row(children: [Icon(Icons.call_made_outlined, color: Colors.red,),Text('Today 3:56 AM')],),
          trailing: Icon(Icons.call,color: Colors.green,),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(""),
          ),
          title: Text('sulieman'),
          subtitle: Row(children: [Icon(Icons.call_received, color: Colors.green,),Text('Today 3:56 AM')],),
          trailing: Icon(Icons.call,color: Colors.green,),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(""),
          ),
          title: Text('mussa'),
          subtitle: Row(children: [Icon(Icons.call_received, color: Colors.red,),Text('Today 3:56 AM')],),
          trailing: Icon(Icons.call,color: Colors.green,),
        ),
      ],
    );
  }
}
