import 'package:flutter/material.dart';

class LoginBarberman extends StatefulWidget {
  const LoginBarberman ({Key? key}) : super(key: key);

  @override
  _LoginBarbermanState createState() => _LoginBarbermanState();
}

class _LoginBarbermanState extends State<LoginBarberman> {
  final _loginKey = GlobalKey<_LoginBarbermanState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Form(
            key: _loginKey,
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                      hintText: "Masukkan Nama Lengkap",
                      labelText: "Nama Lengkap",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10) 
                      )
                    ),
                    )
                  ],
              ),
            )
          )
        ],
      )
    );
  }
}