import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:project/src/components/custom_button.dart';
import 'package:project/src/components/custom_text_field.dart';
import 'package:project/src/components/custom_divider.dart';
import 'package:project/src/constants/app_color.dart';
import 'package:project/src/constants/app_paddings.dart';
import 'package:project/src/data/models/tokens_model.dart';
import 'package:project/src/router/router_const.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Dio dio = Dio();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              controller: emailController,
              placeholder: "Логин или почта",
            ),
            CustomDivider(),
            CustomTextField(
              controller: passwordController,
              placeholder: "Пароль",
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: AppPaddings.horizontal,
              child: CustomButton(
                labelText: "Войти",
                onPressed: () async {
                  try {
                    Response response = await dio.post(
                      'http://api.codeunion.kz/api/v1/auth/login',
                      data: {
                        'email': emailController.text,
                        'password': passwordController.text,
                      },
                    );
                    TokensModel tokensModel = TokensModel.fromJson(
                      response.data['tokens'],
                    );

                    Box tokensBox = Hive.box("tokens");
                    tokensBox.put('access', tokensModel.access);
                    tokensBox.put('refresh', tokensModel.refresh);

                    Navigator.pushReplacementNamed(context, MainRoute);

                  } on DioError catch (e) {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: Text('Ошибка'),
                          content: Text('Неправильный логин или пароль!'),
                          actions: [
                            CupertinoButton(
                              child: Text('ОК'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        );
                      },
                    );
                    throw e;
                  }
                },
              ),
            ),
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
