import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/src/components/custom_button.dart';
import 'package:project/src/components/custom_text_field.dart';
import 'package:project/src/components/custom_divider.dart';
import 'package:project/src/constants/app_color.dart';
import 'package:project/src/constants/app_paddings.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: AppColor.white,
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
                CustomTextField(
                  placeholder: "Логин",
                ),
                CustomDivider(),
                CustomTextField(
                  placeholder: "Телефон",
                ),
                CustomDivider(),
                CustomTextField(
                  placeholder: "Почта",
                ),
                CustomDivider(),
                CustomTextField(
                  suffix: CupertinoButton(
                    onPressed: () {},
                    child: SvgPicture.asset(
                      "assets/icons/eye_slash.svg",
                      width: 24,
                      height: 19,
                    ),
                  ),
                  placeholder: "Пароль",
                ),
              ],
            ),
            Padding(
              padding: AppPaddings.horizontal,
              child: CustomButton(
                labelText: "Создать аккаунт",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
