import 'package:e_barber/pelanggan/bottombar_pelanggan.dart';
import 'package:e_barber/pelanggan/model/model_pelanggan.dart';
import 'package:flutter/material.dart';

class LoginPelanggan extends StatefulWidget {
  const LoginPelanggan({Key? key}) : super(key: key);

  @override
  _LoginPelangganState createState() => _LoginPelangganState();
}

class _LoginPelangganState extends State<LoginPelanggan> {
  final _login = GlobalKey<_LoginPelangganState>();
  final _formKey = GlobalKey<FormState>();
  var formData = FormData();

  @override
  Widget build(BuildContext context) {
    //Variabel
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      // initialValue: 'example@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Email Wajib diisi";
        } else {
          formData.email = value;
          return null;
        }
      },
    );

    final password = TextFormField(
      autofocus: false,
      // initialValue: 'password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Password Wajib diisi";
        } else {
          formData.password = value;
          return null;
        }
      },
    );

    final loginButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: SizedBox(
          width: 250,
          height: 50,
          child: FloatingActionButton.extended(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            heroTag: "LoginPelanggan",
            backgroundColor: const Color(0xff20639B),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // simpanData.password = formData.password;
                // simpanData.confirmPassword = formData.confirmPassword;
              }
            },
            label: const Text("Login"),
          ),
        ));

    final lupaPassword = TextButton(
      style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent)),
      child: Text("Lupa Password?", style: TextStyle(color: Colors.grey)),
      onPressed: () {},
    );

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white10,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          // title: Text("<", style: TextStyle(color: Colors.black),),
        ),
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 55, right: 55),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Column(
                              children: [
                                Text(
                                  "Form Login",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: const Text(
                                    "Pelanggan",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontStyle: FontStyle.italic,
                                        color:
                                            Color.fromARGB(255, 173, 166, 166)),
                                  ),
                                ),
                              ],
                            )),
                        Text(
                            "E-Barber merupakan tempat pangkas rambut yang akan melayani anda tanpa harus keluar rumah.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                wordSpacing: 10,
                                height: 2)),
                      ])),
                ],
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      email,
                      const SizedBox(height: 8),
                      password,
                      const SizedBox(height: 8),
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [lupaPassword],
              ),
              SizedBox(height: 24),
              loginButton
            ],
          ),
        ));
  }
}
