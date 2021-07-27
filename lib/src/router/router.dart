import 'package:flutter/cupertino.dart';
import 'package:project/src/router/router_const.dart';
import 'package:project/src/screens/auth/auth_screen.dart';
import 'package:project/src/screens/auth/registration_screen.dart';
import 'package:project/src/screens/main_screen/main_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AuthRoute:
        return CupertinoPageRoute(
          builder: (context) => AuthScreen(),
        );
      case RegisterRoute:
        return CupertinoPageRoute(
          builder: (context) => RegistrationScreen(),
        );
      case MainRoute:
        return CupertinoPageRoute(builder: (context) => MainScreen());
      default:
        return CupertinoPageRoute(
          builder: (context) => AuthScreen(),
        );
    }
  }
}
