import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/src/router/router.dart';
import 'package:project/src/screens/auth/auth_screen.dart';
import 'package:project/src/screens/registration/registration_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      onGenerateRoute: AppRouter.generateRoute,
      theme: CupertinoThemeData(primaryColor: CupertinoColors.black),
      home: AuthScreen(),
    );
  }
}
