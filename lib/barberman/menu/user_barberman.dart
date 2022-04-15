import 'dart:html';

import 'package:e_barber/barberman/bottombar_barberman.dart';
import 'package:flutter/material.dart';

class UserBarberman extends StatefulWidget{
  const UserBarberman({Key? key}) : super(key: key);
  
  @override
  _UserBarbermanState createState() => _UserBarbermanState();
  } 

  class _UserBarbermanState extends State<UserBarberman> {
  
  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      body: Center(
        child: Text("User barberman"),
      ),
      );
      
  }
}

