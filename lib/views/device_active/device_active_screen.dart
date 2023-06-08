import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';

import '../common_widget/frame34.dart';
import '../common_widget/frame38.dart';
import '../common_widget/see_all.dart';
import '../common_widget/text_widget.dart';

class DeviceActiveScreen extends StatelessWidget {
  const DeviceActiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hexToColor(mains2),
        leadingWidth: 80,
        leading: Container(
          margin: EdgeInsets.only(left: 18),
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Row(
              children: [
                const Icon(Icons.arrow_back_ios, color: Colors.white),
                TextWidget(
                  text: 'Back',
                  size: 12,
                  weight: FontWeight.w400,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        title: TextWidget(
          text: 'Devices Active',
          size: 24,
          weight: FontWeight.w600,
          color: Colors.white,
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.search, color: hexToColor(mains2))),
          ),
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35))),
      ),
      body: Container(
        color: hexToColor(mains2),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(35)),
          ),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: SeeAll(
                    text1: 'Device Active',
                    text2: 'icon',
                    text3: '6',
                    color: hexToColor(button),
                  )),
              Frame38(text: 'Turn Off All Devices'),
            ],
          ),
        ),
      ),
    );
  }
}
