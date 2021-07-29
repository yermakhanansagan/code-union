import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:project/src/constants/app_color.dart';
import 'package:project/src/router/router.dart';
import 'package:project/src/router/router_const.dart';


void main() async{
  await Hive.initFlutter();
  await Hive.openBox("tokens");
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String initialRoute = AuthRoute;
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      onGenerateRoute: AppRouter.generateRoute,
      theme: CupertinoThemeData(
          primaryColor: CupertinoColors.black,
          scaffoldBackgroundColor: AppColor.scaffoldBackground),
      initialRoute: initialRoute,
    );
  }
  @override
  void initState() {
    Box tokensBox = Hive.box("tokens");
    if(tokensBox.get("access") != null || tokensBox.get("refresh") != null){
      initialRoute = MainRoute;
    }
    super.initState();
  }
}

