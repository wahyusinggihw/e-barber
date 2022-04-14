import 'package:e_barber/barberman/auth/login-barberman.dart';
import 'package:e_barber/pelanggan/auth/login-pelanggan.dart';
import 'package:flutter/material.dart';

class AuthLogin extends StatelessWidget{
  const AuthLogin({Key? key}) : super(key: key);

  // int _selectedNavbar=1;
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: (){
            Route route = MaterialPageRoute(builder: (context) => const AuthLogin());
            Navigator.pop(context, route);
          },
          ),
        // title: Text("<", style: TextStyle(color: Colors.black),),
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
              style: TextStyle(fontSize: 24),),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                width: 250,
                height: 50,
                child: FloatingActionButton.extended (
                  heroTag: "LoginBarberman",
                  backgroundColor: const Color(0xff20639B),
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => const LoginBarberman());
                    Navigator.push(context, route);
                  },
                  label: const Text("Barberman"),
                ),
              )  
            ),
            Container(
              child: SizedBox(
                width: 250,
                height: 50,
                child: FloatingActionButton.extended (
                  heroTag: "LoginPelanggan",
                  backgroundColor: const Color(0xff20639B),
                  onPressed: (){
                    Route route = MaterialPageRoute(builder: (context) => const LoginPelanggan());
                    Navigator.push(context, route);
                  },
                  label: const Text("Pelanggan"),
                ),
              )  
            ),
          ],
        )
      ),
    );
  }
}