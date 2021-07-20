import 'package:flutter/cupertino.dart';

import 'package:project/src/constants/app_color.dart';
import 'package:project/src/screens/timeline/widgets/profile_description.dart';
import 'package:project/src/screens/timeline/widgets/profile_screen_button.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: AppColor.white,
        border: Border(),
        middle: Text("Профиль"),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProfileDescription(
            imagePath: "assets/images/lada_priora_1.jpg",
            name: "Yermakhan Angsagan",
            email: "angsagan@gmail.com",
          ),
          SizedBox(
            height: 27,
          ),
          ProfileScreenButton(
            //лейбл по дефолту Выйти
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
