import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/views/common_widget/see_all.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';
import 'package:smart_home/views/home/frame11.dart';
import 'package:smart_home/views/home/frame19.dart';
import 'package:smart_home/views/home/frame32.dart';

import '../common_widget/clipper.dart';
import 'frame41.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hexToColor(mains2),
        elevation: 0,
        shadowColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
                text: 'Good Morning,',
                size: 18,
                weight: FontWeight.w600,
                color: Colors.white),
            TextWidget(
                text: 'Kimberly Mastrangelo',
                size: 16,
                weight: FontWeight.w400,
                color: Colors.black),
          ],
        ),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 24),
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Icon(Icons.notifications)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: hexToColor(mains2),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(35)),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16.5),
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  decoration: BoxDecoration(
                      color: hexToColor(roombg),
                      borderRadius: BorderRadius.circular(28)),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    width: 60,
                                    height: 60,
                                    child: Image.asset(
                                      "assets/img_1.png",
                                      fit: BoxFit.fill,
                                    )),
                                const SizedBox(width: 12),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(
                                        text: "May 16, 2023 10:05 am",
                                        size: 12,
                                        weight: FontWeight.w400,
                                        color: Colors.black),
                                    TextWidget(
                                        text: "Cloudy",
                                        size: 18,
                                        weight: FontWeight.w600,
                                        color: Colors.black),
                                    TextWidget(
                                        text: "Jakarta, Indonesia",
                                        size: 12,
                                        weight: FontWeight.w400,
                                        color: Colors.black),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              width: 60,
                              height: 45,
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Positioned(
                                    right: 15,
                                    child: TextWidget(
                                        text: "19",
                                        size: 40,
                                        weight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Positioned(
                                    top: 5,
                                    right: 10,
                                    child: Container(
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 3),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      right: 0,
                                      top: 8,
                                      child: TextWidget(
                                          text: 'c',
                                          size: 30,
                                          weight: FontWeight.w600,
                                          color: Colors.black))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: hexToColor(mains2),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Frame11(
                            iconData: Icons.ac_unit,
                            text1: "Humadity",
                            text2: "97",
                            text3: "%",
                          ),
                          Frame11(
                            iconData: Icons.ac_unit,
                            text1: "Visibility",
                            text2: "7",
                            text3: "km",
                          ),
                          Frame11(
                            iconData: Icons.ac_unit,
                            text1: "NE wind",
                            text2: "3",
                            text3: "km/h",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: hexToColor(mains2),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(35)),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16.5),
                    child: Column(
                      children: [
                        SeeAll(
                          text1: 'Rooms',
                          text2: 'See All',
                          text3: '',
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Frame41(
                                image: 'assets/img_2.png',
                                text1: '19',
                                text2: 'Living Room',
                                text3: '5',
                                text4: 'devices'),
                            Frame41(
                                image: 'assets/img_3.png',
                                text1: '12',
                                text2: 'Bedroom',
                                text3: '8',
                                text4: 'devices'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16.5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            TextWidget(
                                text: "Active",
                                size: 18,
                                weight: FontWeight.w600,
                                color: Colors.black),
                            Container(
                              height: 18,
                              width: 18,
                              margin: EdgeInsets.only(left: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: hexToColor(mains2)),
                              alignment: Alignment.center,
                              child: TextWidget(
                                  text: "10",
                                  size: 14,
                                  weight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        TextWidget(
                            text: 'See All',
                            size: 16,
                            weight: FontWeight.w600,
                            color: hexToColor(mains2))
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Frame32(
                            image: 'assets/img_4.png',
                            text1: 'Temperature',
                            text2: '19°C',
                            text3: 'AC',
                            text4: 'Living room',
                            text5: 'ON'),
                        Frame32(
                            image: 'assets/img_5.png',
                            text1: 'Color',
                            text2: 'White',
                            text3: 'Lamp',
                            text4: 'Dining room',
                            text5: 'ON'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 18),
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: hexToColor(button),
                ),
                alignment: Alignment.center,
                child: TextWidget(
                  text: 'Turn Off All Devices',
                  size: 16,
                  weight: FontWeight.w600,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
