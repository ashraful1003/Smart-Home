import 'package:flutter/material.dart';

import '../../constants.dart';
import '../common_widget/frame38.dart';
import '../common_widget/see_all.dart';
import '../common_widget/text_widget.dart';
import '../home/frame32.dart';

class DetailRoomScreen extends StatelessWidget {
  const DetailRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hexToColor(mains2),
        leadingWidth: 80,
        leading: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white)),
            TextWidget(
                text: 'Back',
                size: 12,
                weight: FontWeight.w400,
                color: Colors.white),
          ],
        ),
        title: TextWidget(
            text: 'Living Room',
            size: 24,
            weight: FontWeight.w600,
            color: Colors.white),
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
      ),
      body: Container(
        decoration: BoxDecoration(
          color: hexToColor(mains2),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(35)),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: SeeAll(
                      text1: 'Device',
                      text2: 'icon',
                      text3: '4',
                      color: hexToColor(button),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 200,
                        mainAxisSpacing: 14,
                        crossAxisSpacing: 16),
                    itemBuilder: (BuildContext context, int index) {
                      return Frame32(
                          image: 'assets/img_4.png',
                          text1: 'Temperature',
                          text2: '19°C',
                          text3: 'AC',
                          text4: 'Living room',
                          text5: 'ON');
                    },
                  ),
                ),
                Frame38(text: 'Turn Off All Devices'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
