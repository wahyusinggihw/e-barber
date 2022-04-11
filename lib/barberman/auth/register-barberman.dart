import 'package:flutter/material.dart';

class RegisterBarberman extends StatefulWidget {
  const RegisterBarberman ({Key? key}) : super(key: key);

  @override
  _RegisterBarbermanState createState() => _RegisterBarbermanState();
}

class _RegisterBarbermanState extends State<RegisterBarberman> {
  final _login = GlobalKey<_RegisterBarbermanState>();
  // final _formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Register Barberman")
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