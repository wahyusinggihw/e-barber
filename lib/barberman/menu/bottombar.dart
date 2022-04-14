import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget{
  const BottomBar({Key? key}) : super(key: key);


  // const BottomBar({Key? key}) : super(key: key);
  _BottomBarState createState() => _BottomBarState();
  }

  class _BottomBarState extends State<BottomBar>{
    static int _selectedNavbar = 0;

    void _changeSelectedNavBar(int index) {
      setState(() {
        _selectedNavbar = index;
      });
}
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: BottomNavigationBar(
                    elevation: 0,
                    backgroundColor: Color(0xff20639B),
                    items:  const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: "Home"
                        ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.chat),
                        label: "Chat"
                        ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.list_alt),
                        label: "Order"
                        )
                    ],
                    currentIndex: 0,
                    selectedItemColor: Colors.white,
                    showUnselectedLabels: true,
                    ),
                ),
    );
  }
}