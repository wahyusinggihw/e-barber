import 'package:e_barber/barberman/auth/register-barberman.dart';
import 'package:e_barber/pelanggan/auth/register-pelanggan.dart';
import 'package:flutter/material.dart';

class AuthRegister extends StatelessWidget{
  const AuthRegister({Key? key}) : super(key: key);

  // int _selectedNavbar=1;
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
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
                  backgroundColor: const Color(0xff20639B),
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => const RegisterBarberman());
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
                  backgroundColor: const Color(0xff20639B),
                  onPressed: (){
                    Route route = MaterialPageRoute(builder: (context) => const RegisterPelanggan());
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