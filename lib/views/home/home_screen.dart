import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';
import 'package:smart_home/views/home/frame11.dart';
import 'package:smart_home/views/home/frame19.dart';
import 'package:smart_home/views/home/frame32.dart';

import 'frame41.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
                text: 'Good Morning,', size: 18, weight: FontWeight.w600),
            TextWidget(text: 'Nalarisa', size: 16, weight: FontWeight.w400),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16.5),
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(4)),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset(
                                    "",
                                    fit: BoxFit.fill,
                                  )),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextWidget(
                                    text: "Mostly Cloudy",
                                    size: 8,
                                    weight: FontWeight.w600,
                                  ),
                                  TextWidget(
                                    text: "tanggal",
                                    size: 8,
                                    weight: FontWeight.w400,
                                  ),
                                  TextWidget(
                                    text: "AirModerate 80",
                                    size: 8,
                                    weight: FontWeight.w400,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: 40,
                            height: 30,
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Positioned(
                                  right: 5,
                                  child: TextWidget(
                                      text: "19",
                                      size: 28,
                                      weight: FontWeight.w600),
                                ),
                                Positioned(
                                  top: 2,
                                  child: Container(
                                    height: 9,
                                    width: 9,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 3),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                      color: Colors.black,
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
                          text2: "8",
                          text3: "km",
                        ),
                        Frame11(
                          iconData: Icons.ac_unit,
                          text1: "SSW wind",
                          text2: "3",
                          text3: "km/h",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16.5),
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withOpacity(0.5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Frame19(
                        image: "",
                        text1: "89,9",
                        text2: "KwH",
                        text3: "Total Usage This Month"),
                    Frame19(
                        image: "",
                        text1: "89,9",
                        text2: "KwH",
                        text3: "Total Usage This Month"),
                  ],
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
                        TextWidget(
                            text: "Rooms", size: 14, weight: FontWeight.w600),
                        TextWidget(
                            text: 'See All', size: 12, weight: FontWeight.w400)
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Frame41(
                            image: '',
                            text1: '19',
                            text2: 'Living Room',
                            text3: '5',
                            text4: 'devices'),
                        Frame41(
                            image: '',
                            text1: '19',
                            text2: 'Living Room',
                            text3: '5',
                            text4: 'devices'),
                      ],
                    ),
                  ],
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
                                size: 14,
                                weight: FontWeight.w600),
                            Container(
                              height: 18,
                              width: 18,
                              margin: EdgeInsets.only(left: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.grey),
                              alignment: Alignment.center,
                              child: TextWidget(
                                text: "10",
                                size: 10,
                                weight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        TextWidget(
                            text: 'See All', size: 12, weight: FontWeight.w400)
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Frame32(
                            image: '',
                            text1: 'Color',
                            text2: 'White',
                            text3: 'Smart Lamp',
                            text4: 'dining room',
                            text5: 'ON'),
                        Frame32(
                            image: '',
                            text1: 'Color',
                            text2: 'White',
                            text3: 'Smart Lamp',
                            text4: 'dining room',
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
                  color: Colors.grey,
                ),
                alignment: Alignment.center,
                child: TextWidget(
                  text: 'Turn Off All Devices',
                  size: 14,
                  weight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
