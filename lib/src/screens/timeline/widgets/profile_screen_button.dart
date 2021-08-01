import 'package:flutter/cupertino.dart';
import 'package:project/src/common/constants/app_color.dart';

class ProfileScreenButton extends StatelessWidget {
  final String labelText;
  final GestureTapCallback onPressed;
  const ProfileScreenButton({
    Key? key, this.labelText = "Выйти", required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        color: AppColor.secondButtonColor,
        padding: const EdgeInsets.only(left: 29, top: 21, bottom: 22),
        alignment: Alignment.centerLeft,
        child: Text(
          labelText,
          style: TextStyle(color: AppColor.redTextColor, fontSize: 16),
        ),
        onPressed: onPressed);
  }
}