import 'package:flutter/material.dart';

class LoginPelanggan extends StatefulWidget {
  const LoginPelanggan ({Key? key}) : super(key: key);

  @override
  _LoginPelangganState createState() => _LoginPelangganState();
}

class _LoginPelangganState extends State<LoginPelanggan> {
  final _login = GlobalKey<_LoginPelangganState>();
  // final _formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Login Pelanggan")
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