import 'package:flutter/material.dart';

class AuthMain extends StatelessWidget{
  const AuthMain({Key? key}) : super(key: key);

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
                  onPressed: () => {
                    Builder: (_) => const Register()
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
                  backgroundColor: const Color(0xff20639B),
                  onPressed: (){},
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

class Register extends StatelessWidget{
  const Register({Key? key}) : super(key: key);

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
                  onPressed: (){},
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
                  onPressed: (){},
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