import 'package:e_barber/auth.dart';
import 'package:e_barber/auth_login.dart';
import 'package:e_barber/auth_register.dart';
import 'package:e_barber/barberman/auth/login_barberman.dart';
import 'package:e_barber/barberman/auth/register_barberman.dart';
import 'package:e_barber/main.dart';
import 'package:e_barber/pelanggan/auth/login_pelanggan.dart';
import 'package:e_barber/pelanggan/auth/register_pelanggan.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => AuthMain());
      case '/register':
        return MaterialPageRoute(builder: (_) => AuthRegister());
      case '/register-barberman':
        return MaterialPageRoute(builder: (_) => RegisterBarberman());
      case '/register-pelanggan':
        return MaterialPageRoute(builder: (_) => RegisterPelanggan());
      case '/login':
        return MaterialPageRoute(builder: (_) => AuthLogin());
      case '/login-barberman':
        return MaterialPageRoute(builder: (_) => LoginBarberman());
      case '/login-pelanggan':
        return MaterialPageRoute(builder: (_) => LoginPelanggan());
      // return MaterialPageRoute(builder: (_) => AboutPage(args));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Page Not Found')),
      );
    });
  }
}
