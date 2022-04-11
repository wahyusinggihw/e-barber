import 'package:flutter/material.dart';

class RegisterPelanggan extends StatefulWidget {
  const RegisterPelanggan ({Key? key}) : super(key: key);

  @override
  _RegisterPelangganState createState() => _RegisterPelangganState();
}

class _RegisterPelangganState extends State<RegisterPelanggan> {
  final _login = GlobalKey<_RegisterPelangganState>();
  // final _formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Register Pelanggan")
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