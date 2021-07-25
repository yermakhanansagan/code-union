import 'package:flutter/cupertino.dart';
import 'package:project/src/constants/app_color.dart';

class CustomTextField extends StatelessWidget {
  final String placeholder;
  final TextEditingController? controller;
  final Widget? suffix;

  const CustomTextField({
    Key? key,
    this.placeholder = "Введите",
    this.controller,
    this.suffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      controller: controller,
      placeholder: placeholder,
      suffix: suffix,
      decoration: BoxDecoration(
        color: AppColor.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
    );
  }
}
