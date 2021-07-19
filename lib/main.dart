import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/src/screens/auth/auth_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(home: AuthScreen(),);
  }
}
