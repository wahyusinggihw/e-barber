import 'package:e_barber/barberman/auth/login_barberman.dart';
import 'package:e_barber/pelanggan/auth/login_pelanggan.dart';
import 'package:flutter/material.dart';

class AuthLogin extends StatelessWidget {
  const AuthLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          // margin: EdgeInsets.only(top: 40.0),
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(bottom: 2),
            child: const Text(
              "E-Barber",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 30),
            child: const Text(
              "Login",
              style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 173, 166, 166)),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                width: 250,
                height: 50,
                child: FloatingActionButton.extended(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  heroTag: "LoginBarberman",
                  backgroundColor: const Color(0xff20639B),
                  onPressed: () {
                    // Route route = MaterialPageRoute(
                    //     builder: (context) => const LoginBarberman());
                    // Navigator.push(context, route);
                    Navigator.pushNamed(context, '/login-barberman');
                  },
                  label: const Text("Barberman"),
                ),
              )),
          Container(
              child: SizedBox(
            width: 250,
            height: 50,
            child: FloatingActionButton.extended(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              heroTag: "LoginPelanggan",
              backgroundColor: const Color(0xff20639B),
              onPressed: () {
                // Route route = MaterialPageRoute(
                //     builder: (context) => const LoginPelanggan());
                // Navigator.push(context, route);
                Navigator.pushNamed(context, '/login-pelanggan');
              },
              label: const Text("Pelanggan"),
            ),
          )),
        ],
      )),
    );
  }
}
