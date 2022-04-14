import 'package:e_barber/barberman/menu/beranda-barberman.dart';
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

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
        child: SizedBox(
                width: 250,
                height: 50,
                child: FloatingActionButton.extended (
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  heroTag: "LoginPelanggan",
                  backgroundColor: const Color(0xff20639B),
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => const BerandaBarberman());
                    Navigator.push(context, route);
                  },
                  label: const Text("Login"),
                ),
              )       
      );

    final lupaPassword = TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent)
        ),
        child: Text("Lupa Password?",
                    style: TextStyle(color: Colors.grey)
        ),
        onPressed: (){},
      );
    
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: (){
            Route route = MaterialPageRoute(builder: (context) => const LoginBarberman());
            Navigator.pop(context, route);
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
                child: Column(
                  children: const <Widget> [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child:  Text("E-Barber | Barberman",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),),
                      ),
                    Text("E-Barber merupakan tempat pangkas rambut yang akan melayani anda tanpa harus keluar rumah.", textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, wordSpacing: 10, height: 2)), 
                  ]
                )
              ),
              ],
            ),
            email,
            SizedBox(height: 8),
            password,
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                lupaPassword
              ],
            ),
            SizedBox(height: 24),
            loginButton
          ],
        ),
      )
    );
  }
}