import 'package:flutter/material.dart';
import 'package:flutter_chat/models/chat_model.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => new _ChatListState();
 }
class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
   return new ListView.builder(
     itemCount: messageData.length,
     itemBuilder: (context, i)=> Column(
       children: <Widget>[
         Divider(
           height: 10.0,
         ),
         ListTile(
           leading: CircleAvatar(
             backgroundImage: NetworkImage(messageData[i].imageUrl),
           ),
         )
       ],
     ),
  
   );
  }
}