import 'package:e_barber/barberman/menu/beranda_barberman.dart';
import 'package:e_barber/barberman/menu/chat_barberman.dart';
import 'package:e_barber/barberman/menu/dompet_barberman.dart';
import 'package:e_barber/barberman/menu/order_barberman.dart';
import 'package:e_barber/barberman/menu/user_barberman.dart';
import 'package:e_barber/pelanggan/menu/beranda_pelanggan.dart';
import 'package:e_barber/pelanggan/menu/chat_pelanggan.dart';
import 'package:e_barber/pelanggan/menu/dompet_pelanggan.dart';
import 'package:e_barber/pelanggan/menu/order_pelanggan.dart';
import 'package:e_barber/pelanggan/menu/user_pelanggan.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget{
  const BottomBar({Key? key}) : super(key: key);

  // const BottomBar({Key? key}) : super(key: key);
  @override
  _BottomBarState createState() => _BottomBarState();
  }

  class _BottomBarState extends State<BottomBar>{
    int _currentIndex = 0;
    
    final List<Widget> _children = [
      // BerandaBarberman(),
      BerandaPelanggan(),
      ChatPelanggan(),
      OrderPelanggan(),
      DompetPelanggan(),
      UserPelanggan(),
    ];

    void onBarTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: BottomNavigationBar(                    
                    currentIndex: _currentIndex,
                    onTap: onBarTapped,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    elevation: 0,
                    selectedItemColor: Colors.white,
                    unselectedItemColor: Colors.white24,
                    backgroundColor: const Color(0xff20639B),
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home_outlined),
                        label: "Home",
                        backgroundColor: Color(0xff20639B)
                        ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.chat_outlined),
                        label: "Chat",
                        backgroundColor: Color(0xff20639B)
                        ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.list_alt),
                        label: "Order",
                        backgroundColor: Color(0xff20639B)
                        ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.account_balance_wallet_outlined),
                        label: "Dompet",
                        backgroundColor: Color(0xff20639B)
                        ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.account_circle_outlined),
                        label: "User",
                        backgroundColor: Color(0xff20639B)
                        ),
                    ],
                    
                    ),
                ),
      
    );
  }
}