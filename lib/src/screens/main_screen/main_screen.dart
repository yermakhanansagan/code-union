import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/src/screens/timeline/timeline_screen.dart';

import '../auth/auth_screen.dart';
import '../auth/registration_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/timeline.svg",
            ),
            label: "Лента",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/map.svg"),
            label: "Карта",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/liked.svg"),
            label: "Избранные",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/profile.svg"),
            label: "Профиль",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return TimelineScreen();
              case 1:
                return RegistrationScreen();
              case 2:
                return AuthScreen();
              case 3:
                return RegistrationScreen();
              default:
                return TimelineScreen();
            }
          },
        );
      },
    );
  }
}
