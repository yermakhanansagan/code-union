import 'package:flutter/cupertino.dart';
import 'package:project/src/common/constants/app_color.dart';


class CustomButton extends StatelessWidget {
  final String labelText;
  final GestureTapCallback? onPressed;
  const CustomButton({
    Key? key, this.onPressed, this.labelText = "Кнопка",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: AppColor.main,
      child: Text(
        labelText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
