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
          child: Column(
            children: <Widget> [
              Container(
                padding: const EdgeInsets.only(bottom: 30),
                child: const Text("E-Barber|beranda",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),),
            ),
            ],
          ),
        ),
      );
      
  }
}

