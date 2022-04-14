import 'dart:ui';

import 'package:e_barber/auth-login.dart';
import 'package:e_barber/auth-register.dart';
import 'package:flutter/material.dart';

class AuthMain extends StatelessWidget{
  const AuthMain({Key? key}) : super(key: key);

  // int _selectedNavbar=1;
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
      ),
      body: Center(
        // margin: EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 30),
              child: const Text("E-Barber",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                width: 250,
                height: 50,
                child: FloatingActionButton.extended (
                  heroTag: "register",
                  backgroundColor: const Color(0xff20639B),
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => const AuthRegister());
                    Navigator.push(context, route);
                  },
                  label: const Text("Register"),
                ),
              )  
            ),
            Container(
              child: SizedBox(
                width: 250,
                height: 50,
                child: FloatingActionButton.extended (
                  heroTag: "Login",
                  backgroundColor: const Color(0xff20639B),
                  onPressed: (){
                    Route route = MaterialPageRoute(builder: (context) => const AuthLogin());
                    Navigator.push(context, route);
                  },
                  label: const Text("Login"),
                ),
              )  
            ),
          ],
        )
      ),
    );
  }
}