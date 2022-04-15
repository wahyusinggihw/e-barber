import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BerandaPelanggan extends StatefulWidget{
  const BerandaPelanggan({Key? key}) : super(key: key);
  
  @override
  _BerandaPelangganState createState() => _BerandaPelangganState();
}

class _BerandaPelangganState extends State<BerandaPelanggan> {
  final datasets = <String, dynamic>{};

  @override
  Widget build(BuildContext context){
    
    return Scaffold(
        body: Center(
          child: ListView(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
            children: <Widget> [
              Center(
                  child: Column(
                    children: [
                      Container(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: const Text("Beranda | Pelanggan",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),),
                      ),
                      ClipRRect(
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                        child: SizedBox(
                          height: 150,
                          width: 300,
                          child: Image.asset('assets/images/beranda.png'),
                        ),
                      
                      )
                    ],
                  ),
              )
            ],
          ),
        ),
      );
  }
}