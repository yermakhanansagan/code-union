import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/src/screens/auth/auth_screen.dart';
import 'package:project/src/screens/auth/registration_screen.dart';
import 'package:project/src/screens/profile/profile_screen.dart';
import 'package:project/src/screens/timeline/timeline_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: CupertinoTabScaffold(
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
                  return ProfileScreen();
                default:
                  return TimelineScreen();
              }
            },
          );
        },
      ),
    );
  }
}
