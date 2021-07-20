import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/src/constants/app_paddings.dart';
import 'package:project/src/data/dummy_data.dart';

class TimelineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Padding(
          padding: AppPaddings.horizontal,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 33,
                ),
                CupertinoTextField(
                  prefix: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Icon(CupertinoIcons.search),
                  ),
                  placeholder: "Поиск",
                  padding: const EdgeInsets.all(12),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: shoppingCenters.length,
                  itemBuilder: (context, index) {
                    final shoppingCenter = shoppingCenters[index];
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            shoppingCenter.imagePath,
                          ),
                          SizedBox(
                            height: 11,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  bottom: 12,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      shoppingCenter.name,
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      shoppingCenter.description,
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xFF929292)),
                                    ),
                                    Text(
                                      shoppingCenter.address,
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xFF929292)),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                  child: SvgPicture.asset(
                                      "assets/icons/liked.svg")),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
