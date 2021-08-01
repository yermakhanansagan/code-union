import 'package:flutter/cupertino.dart';
import 'package:project/src/common/constants/app_color.dart';


class CustomTextField extends StatelessWidget {
  final String placeholder;
  final TextEditingController? controller;
  final Widget? suffix;
  final bool obscureText;
  final TextInputType? keyboardType;

  const CustomTextField({
    Key? key,
    this.placeholder = "Введите",
    this.controller,
    this.suffix, this.obscureText = false, this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      controller: controller,
      placeholder: placeholder,
      obscureText: obscureText,
      keyboardType: keyboardType,
      suffix: suffix,
      decoration: BoxDecoration(
        color: AppColor.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
    );
  }
}
