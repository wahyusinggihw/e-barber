import 'package:flutter/material.dart';

class LoginBarberman extends StatefulWidget {
  const LoginBarberman ({Key? key}) : super(key: key);

  @override
  _LoginBarbermanState createState() => _LoginBarbermanState();
}

class _LoginBarbermanState extends State<LoginBarberman> {
  final _login = GlobalKey<_LoginBarbermanState>();
  // final _formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Login Barberman")
          // Form(
          //   key: _formKey2,
          //   child: Container(
          //     padding: EdgeInsets.all(20.0),
          //     child: Column(
          //       children: [
          //       TextFormField(
          //         decoration: new InputDecoration(
          //           hintText: "Masukkan Nama Belakang",
          //           labelText: "Nama Belakang"
          //         ),
          //       ),
          //       ],
          //     ),
          //   ),
          // ),      
    );
  }
}