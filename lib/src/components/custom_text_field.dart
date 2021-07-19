
import 'package:flutter/cupertino.dart';
import 'package:project/src/constants/app_color.dart';

class CustomTextField extends StatelessWidget {
  final String placeholder;

  const CustomTextField({
    Key? key,
    this.placeholder = "Введите",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      placeholder: placeholder,
      decoration: BoxDecoration(
        color: AppColor.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
    );
  }
}