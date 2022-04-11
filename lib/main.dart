import 'package:flutter/material.dart';
import 'auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-Barber",
      home: BottomNavbar(), 
    );
  }
}

class BottomNavbar extends StatefulWidget{
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavbar>{
  int _selectedNavbar=0;

  final tabs=[
    Center(child: MenuHome()),
    Center(child: MenuEmail()),
    Center(child: MenuLogout())
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: const AuthMain()
      )
    );
  }
}
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: tabs[_selectedNavbar],
//     bottomNavigationBar: BottomNavigationBar(
//       items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.alternate_email),
//           label: 'Email'
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.logout),
//           label: 'Logout'
//         ),
//       ],
//       currentIndex: _selectedNavbar,
//       selectedItemColor: Colors.black87,
//       unselectedItemColor: Colors.grey,
//       showSelectedLabels: true,
//       onTap: (index){
//         setState(() {
//           _selectedNavbar = index;
//         });
//       },
//       ),
//     );
//   }
// }


class MenuHome extends StatelessWidget{
  // int _selectedNavbar=1;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        // margin: EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 30),
              child: const Text("E-Barber",
              style: TextStyle(fontSize: 24),),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                width: 250,
                height: 50,
                child: FloatingActionButton.extended (
                onPressed: (){},
                label: const Text("Register"),
              ),
              )  
            ),
            Container(
              child: SizedBox(
                width: 250,
                height: 50,
                child: FloatingActionButton.extended (
                onPressed: (){},
                label: const Text("Login"),
              ),
              )  
            ),
          ],
        )
      ),
    );
  }
}

class MenuEmail extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        actions: [
          Center(
              child: Container(
                margin: EdgeInsets.only(right: 10),
                width: 250,
                height: 40,
                color: Colors.blue.shade800,
                child: Center(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    child: Center(
                         child: TextField(
                           decoration: InputDecoration(
                             prefixIcon: Icon(Icons.search, color: Colors.grey.shade900),
                             hintText: 'Search', iconColor: Colors.white,
                             border: InputBorder.none
                           ),
                         ),
                      // children: [
                      //   Icon(Icons.search, color: Colors.grey.shade800,),
                      //   Text("Search", 
                      //     style: TextStyle(
                      //       color: Colors.grey.shade300))
                      // ],
                    ),
                  ),
                ),
              ),
          )
        ],
      ),
    body: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50), 
                ),
                ),
                Padding(padding: EdgeInsets.only(left: 10, bottom: 20),
                child: Text("email1@email.com"),
                )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50), 
                ),
                ),
                Padding(padding: EdgeInsets.only(left: 10, bottom: 20),
                child: Text("email2@email.com"),
                )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50), 
                ),
                ),
                Padding(padding: EdgeInsets.only(left: 10, bottom: 20),
                child: Text("email3@email.com"),
                )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50), 
                ),
                ),
                Padding(padding: EdgeInsets.only(left: 10, bottom: 20),
                child: Text("email4@email.com"),
                )
            ],
          ),
        ],
      ),
    ),
  );
    
  }
}

class MenuLogout extends StatelessWidget{

 @override
 Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blue.shade700,
       title: Text("Logout"),
     ),
   );
 } 
}