import 'package:flutter/cupertino.dart';
import 'package:project/src/common/constants/app_color.dart';
import 'package:project/src/common/constants/app_paddings.dart';


class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: AppColor.dividerColor,
      margin: AppPaddings.horizontal,
    );
  }
}
