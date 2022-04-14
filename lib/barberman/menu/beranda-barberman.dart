import 'dart:html';

import 'package:e_barber/barberman/menu/bottombar.dart';
import 'package:flutter/material.dart';

class BerandaBarberman extends StatefulWidget{
  const BerandaBarberman({Key? key}) : super(key: key);
  
  @override
  _BerandaBarbermanState createState() => _BerandaBarbermanState();
  } 

  class _BerandaBarbermanState extends State<BerandaBarberman> {
    final _loginKey = GlobalKey<_BerandaBarbermanState>();

  get _selectedNavbar => _selectedNavbar;
  
  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      body: Center(
        child: Text("tab index : $_selectedNavbar"),
      ),
      bottomNavigationBar: const BottomBar(),
      );
      
  }
}

