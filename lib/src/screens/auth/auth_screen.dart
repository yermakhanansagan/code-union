import 'package:flutter/cupertino.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Авторизация"),
      ),
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoTextField(
              placeholder: "Логин или почта",
            ),
            CupertinoTextField(
              placeholder: "Пароль",
            ),
            SizedBox(
              height: 32,
            ),
            CupertinoButton(
              padding: const EdgeInsets.symmetric(vertical: 20),
              color: Color(0xFF4631D2),
              child: Text(
                'Войти',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 19,
            ),
            CupertinoButton(
              padding: const EdgeInsets.symmetric(vertical: 20),
              color: Color(0xFF4631D2),
              child: Text(
                'Зарегистрироваться',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      )),
    );
  }
}
