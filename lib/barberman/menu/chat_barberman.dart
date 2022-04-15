import 'dart:html';

import 'package:e_barber/barberman/bottombar_barberman.dart';
import 'package:flutter/material.dart';

class ChatBarberman extends StatefulWidget{
  const ChatBarberman({Key? key}) : super(key: key);
  
  @override
  _ChatBarbermanState createState() => _ChatBarbermanState();
  } 

  class _ChatBarbermanState extends State<ChatBarberman> {
  
  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      body: Center(
        child: Text("Chat barberman"),
      ),
      );
      
  }
}

