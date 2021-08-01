import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/src/common/components/custom_button.dart';
import 'package:project/src/common/components/custom_divider.dart';
import 'package:project/src/common/components/custom_text_field.dart';
import 'package:project/src/common/constants/app_color.dart';
import 'package:project/src/common/constants/app_paddings.dart';
import 'package:project/src/router/router_const.dart';
import 'package:project/src/screens/registration/bloc/sign_up_bloc.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController loginController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
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
                  controller: loginController,
                ),
                CustomDivider(),
                CustomTextField(
                  placeholder: "Телефон",
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                ),
                CustomDivider(),
                CustomTextField(
                  placeholder: "Почта",
                  controller: emailController,
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
                  controller: passwordController,
                  obscureText: true,
                ),
              ],
            ),
            Padding(
              padding: AppPaddings.horizontal,
              child: BlocConsumer<SignUpBloc, SignUpState>(
                listener: (context, state) {
                  // TODO: implement listener
                  if (state is SignUpLoaded) {
                    Navigator.pushReplacementNamed(context, MainRoute);
                  } else if (state is SignUpFailed) {
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
                    labelText: "Создать аккаунт",
                    onPressed: state is SignUpLoading
                        ? null
                        : () {
                            context.read<SignUpBloc>().add(SignUpPressed(
                                  login: loginController.text,
                                  phone: phoneController.text,
                                  email: emailController.text,
                                  password: passwordController.text,
                                ));
                          },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}
