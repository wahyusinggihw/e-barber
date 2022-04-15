import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPelanggan extends StatefulWidget{
  const ChatPelanggan({Key? key}) : super(key: key);
  
  @override
  _ChatPelangganState createState() => _ChatPelangganState();
}

class _ChatPelangganState extends State<ChatPelanggan> {
  final datasets = <String, dynamic>{};

  @override
  Widget build(BuildContext context){
    
    return Scaffold(
        body: Center(
          child: ListView(
            padding: const EdgeInsets.only(left: 55, right: 55),
            children: <Widget> [
              Container(
                padding: const EdgeInsets.only(bottom: 30),
                child: const Text("Chat pelanggan",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),),
              ),
              SizedBox(
                
              )
            ],
          ),
        ),
      );
  }
}