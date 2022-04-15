import 'dart:html';
import 'package:flutter/material.dart';

class BerandaBarberman extends StatefulWidget{
  const BerandaBarberman({Key? key}) : super(key: key);
  
  @override
  _BerandaBarbermanState createState() => _BerandaBarbermanState();
  } 

  class _BerandaBarbermanState extends State<BerandaBarberman> {
  
  @override
  Widget build(BuildContext context){
    
    return Scaffold(
        body: Center(
          child: ListView(
            padding: const EdgeInsets.only(left: 55, right: 55),
            children: <Widget> [
              Container(
                padding: const EdgeInsets.only(bottom: 30),
                child: const Text("Beranda | Barberman",
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

