import 'package:e_barber/pelanggan/auth/login_pelanggan.dart';
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
    final namaDepan = TextFormField(
      autofocus: false,
      // initialValue: 'password',
      decoration: InputDecoration(
        hintText: 'Nama Depan',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    final namaBelakang = TextFormField(
      autofocus: false,
      // initialValue: 'password',
      decoration: InputDecoration(
        hintText: 'Nama Belakang',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
    
    final email= TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      // initialValue: 'example@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      // initialValue: 'password',
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    final confirmPassword = TextFormField(
      autofocus: false,
      // initialValue: 'password',
      decoration: InputDecoration(
        hintText: 'Konfirmasi Password',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    final registerButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
        child: SizedBox(
                width: 250,
                height: 50,
                child: FloatingActionButton.extended (
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  heroTag: "RegisterBarberman",
                  backgroundColor: const Color(0xff20639B),
                  onPressed: () {
                    // Route route = MaterialPageRoute(builder: (context) => const LoginBarberman());
                    // Navigator.push(context, route);
                  },
                  label: const Text("Register"),
                ),
              )       
      );

    final punyaAkun = TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent)
        ),
        child: Text("Sudah punya akun?",
                    style: TextStyle(color: Colors.grey, fontSize: 14)
        ),
        onPressed: (){
          Route route = MaterialPageRoute(builder: (context) => const LoginPelanggan());
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
          onPressed: (){
            Route route = MaterialPageRoute(builder: (context) => const RegisterPelanggan());
            Navigator.pop(context, route);
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
                child: Column(
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          Text("Form Registrasi",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),),
                          Container(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: const Text("Pelanggan",
                            style: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            color: Color.fromARGB(255, 173, 166, 166)),
                            ),
                          ),
                        ],
                      ),  
                      ),
                    Text("E-Barber merupakan tempat pangkas rambut yang akan melayani anda tanpa harus keluar rumah.", textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, wordSpacing: 10, height: 2)), 
                  ]
                )
              ),
              ],
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                punyaAkun
              ],
            ),
            const SizedBox(height: 24),
            registerButton
          ],
        ),
      )
    );
  }
}