
import 'package:flutter/cupertino.dart';
import 'package:project/src/constants/app_color.dart';

class CustomTextField extends StatelessWidget {
  final String placeholder;
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    this.placeholder = "Введите",
    this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      controller: controller,
      placeholder: placeholder,
      decoration: BoxDecoration(
        color: AppColor.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
    );
  }
}