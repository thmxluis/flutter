import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/call.dart';
import 'package:flutter_chat/pages/camera_alt.dart';
import 'package:flutter_chat/pages/chat_screen.dart';
import 'package:flutter_chat/pages/satatus_screen.dart';

class WhatsAppHome extends StatefulWidget {
  
  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
 }
class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);

  }
  
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: AppBar(
       title: Text("Flutter Chat"),
       bottom: TabBar(
         controller: _tabController,
         tabs: <Widget>[
           Tab(icon: Icon(Icons.camera_alt)),
           Tab(text: "CHATS",),
           Tab(text: "ESTADOS",),
           Tab(text: "LLAMADAS",)
         ],
       ),
     ),
     body: TabBarView(
       controller: _tabController,
       children: <Widget>[
         Camera(),
         ChatList(),
         Status(),
         Calls()
       ],
     ),
  
   );
  }
}
