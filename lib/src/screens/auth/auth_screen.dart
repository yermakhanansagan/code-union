import 'package:flutter/cupertino.dart';
import 'package:project/src/components/custom_button.dart';
import 'package:project/src/components/custom_text_field.dart';
import 'package:project/src/components/custom_divider.dart';
import 'package:project/src/constants/app_color.dart';
import 'package:project/src/constants/app_paddings.dart';
import 'package:project/src/router/router_const.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: AppColor.white,
        border: Border(),
        middle: Text("Авторизация"),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              placeholder: "Логин или почта",
            ),
            CustomDivider(),
            CustomTextField(
              placeholder: "Пароль",
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
                padding: AppPaddings.horizontal,
                child: CustomButton(
                  labelText: "Войти",
                  onPressed: () {},
                )),
            SizedBox(
              height: 19,
            ),
            Padding(
              padding: AppPaddings.horizontal,
              child: CustomButton(
                labelText: "Зарегистрироваться",
                onPressed: () {
                  Navigator.pushNamed(context, RegisterRoute);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
