import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/src/components/divider.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFFF3F4F6),
      resizeToAvoidBottomInset: false,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: Border(),
        middle: Text("Регистрация"),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                CupertinoTextField(
                  placeholder: "Логин",
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
                ),
                customDivider(),
                CupertinoTextField(
                  placeholder: "Телефон",
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
                ),
                customDivider(),
                CupertinoTextField(
                  placeholder: "Почта",
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
                ),
                customDivider(),
                CupertinoTextField(
                  placeholder: "Пароль",
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
                  suffix: CupertinoButton(
                    child: SvgPicture.asset(
                      "assets/icons/eye_slash.svg",
                      width: 24,
                      height: 19,
                    ),
                    onPressed: () {  },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(vertical: 20),
                color: Color(0xFF4631D2),
                child: Text(
                  'Создать аккаунт',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
