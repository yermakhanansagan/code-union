import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/src/router/router_const.dart';
import 'package:project/src/screens/auth/auth_screen.dart';
import 'package:project/src/screens/auth/bloc/log_in_bloc.dart';
import 'package:project/src/screens/registration/bloc/sign_up_bloc.dart';
import 'package:project/src/screens/registration/registration_screen.dart';
import 'package:project/src/screens/main_screen/main_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AuthRoute:
        return CupertinoPageRoute(
          builder: (context) =>
              BlocProvider(
                create: (context) => LogInBloc(),
                child: AuthScreen(),
              ),
        );
      case RegisterRoute:
        return CupertinoPageRoute(
          builder: (context) =>
              BlocProvider(
                create: (context) => SignUpBloc(),
                child: RegistrationScreen(),
              ),
        );
      case MainRoute:
        return CupertinoPageRoute(builder: (context) => MainScreen());
      default:
        return CupertinoPageRoute(
          builder: (context) =>
              BlocProvider(
                create: (context) => LogInBloc(),
                child: AuthScreen(),
              ),
        );
    }
  }
}
