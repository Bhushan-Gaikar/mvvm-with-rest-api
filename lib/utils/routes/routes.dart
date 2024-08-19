import 'package:mvvm/view/login_screen.dart';
import 'package:mvvm/view/signup_screen.dart';
import 'package:mvvm/view/splash_screen.dart';

import 'routes_name.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/view/home_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RoutesName.login:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RoutesName.signUp:
        return MaterialPageRoute(builder: (context) => SignUpScreen());
       case RoutesName.splash:
        return MaterialPageRoute(builder: (context) => SpalshScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                    body: Center(
                  child: Text('No route defined for ${settings.name}'),
                )));
    }
  }
}
