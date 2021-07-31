import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:project/src/common/components/custom_button.dart';
import 'package:project/src/common/components/custom_divider.dart';
import 'package:project/src/common/components/custom_text_field.dart';
import 'package:project/src/common/constants/app_color.dart';
import 'package:project/src/common/constants/app_paddings.dart';
import 'package:project/src/router/router_const.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/src/screens/auth/bloc/log_in_bloc.dart';

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
              obscureText: true,
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: AppPaddings.horizontal,
              child: BlocConsumer<LogInBloc, LogInState>(
                listener: (context, state) {
                  // TODO: implement listener
                  if (state is LogInLoaded){
                    Navigator.pushNamed(context, MainRoute);
                  }
                  else if (state is LogInFailed){
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: Text('Ошибка'),
                          content: Text(state.message ?? ''),
                          actions: [
                            CupertinoButton(
                              child: Text('ОК'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                builder: (context, state) {
                  return CustomButton(
                    labelText: "Войти",
                    onPressed: state is LogInLoading ? null : () {
                      context.read<LogInBloc>().add(LogInPressed(
                          password: passwordController.text,
                          email: emailController.text));
                    },
                  );
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
