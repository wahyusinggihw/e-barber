import 'package:flutter/material.dart';
import 'package:e_barber/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-Barber",
      home: AuthMain(), 
    );
  }
}

