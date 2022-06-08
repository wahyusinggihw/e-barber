import 'package:e_barber/pelanggan/auth/login_pelanggan.dart';
import 'package:flutter/material.dart';
// import 'package:e_barber/pelanggan/model/model_pelanggan.dart';

// JIKA MENGGUNKAAN SATU MODEL, MAKA AKAN ADA PARAMETER ROLE
import 'package:e_barber/models/models.dart';

class RegisterPelanggan extends StatefulWidget {
  const RegisterPelanggan({Key? key}) : super(key: key);

  @override
  _RegisterPelangganState createState() => _RegisterPelangganState();
}

class _RegisterPelangganState extends State<RegisterPelanggan> {
  final _login = GlobalKey<_RegisterPelangganState>();
  final _formKey = GlobalKey<FormState>();
  var formData = FormData();
  @override
  Widget build(BuildContext context) {
    final namaDepan = TextFormField(
      autofocus: true,
      decoration: InputDecoration(
        hintText: 'Nama Depan',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Nama Depan Wajib diisi";
        } else {
          formData.namaDepan = value;
          return null;
        }
      },
    );

    final namaBelakang = TextFormField(
      decoration: InputDecoration(
        hintText: 'Nama Belakang',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return null;
        } else {
          formData.namaBelakang = value;
          return null;
        }
      },
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
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
      obscureText: true,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Password Wajib diisi";
        } else if (value.length < 8) {
          return "Password harus lebih dari 8 huruf";
        } else {
          formData.password = value;
          return null;
        }
      },
    );

    final confirmPassword = TextFormField(
      obscureText: true,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Konfirmasi Password',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return formData.confirmPassword + " Wajib diisi";
        } else if (value != formData.password) {
          return 'Password tidak cocok';
        } else {
          return 'mantap';
          // formData.confirmPassword = value;
          // return null;
        }
      },
    );

    // JIKA MENGGUNKAAN SATU MODEL, MAKA AKAN ADA PARAMETER ROLE
    final roleForm = Visibility(
        visible: false,
        child: TextFormField(
          initialValue: formData.role = "pelanggan",
        ));

    final registerButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: SizedBox(
          width: 250,
          height: 50,
          child: FloatingActionButton.extended(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            heroTag: "RegisterBarberman",
            backgroundColor: const Color(0xff20639B),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // simpanData.password = formData.password;
                // simpanData.confirmPassword = formData.confirmPassword;
              }
            },
            label: const Text("Register"),
          ),
        ));

    final punyaAkun = TextButton(
      style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent)),
      child: Text("Sudah punya akun?",
          style: TextStyle(color: Colors.grey, fontSize: 14)),
      onPressed: () {
        Route route =
            MaterialPageRoute(builder: (context) => const LoginPelanggan());
        Navigator.push(context, route);
      },
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
            children: [
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
                                "Form Registrasi",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w900),
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
                          ),
                        ),
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
                      namaDepan,
                      const SizedBox(height: 8),
                      namaBelakang,
                      const SizedBox(height: 8),
                      email,
                      const SizedBox(height: 8),
                      password,
                      const SizedBox(height: 8),
                      confirmPassword,
                      const SizedBox(height: 8),
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [punyaAkun],
              ),
              const SizedBox(height: 24),
              registerButton
            ],
          ),
        ));
  }
}
