import 'package:flutter/material.dart';
import 'package:smart_home/views/detail_item/usages.dart';

import '../../constants.dart';
import '../common_widget/see_all.dart';
import '../common_widget/text_widget.dart';
import '../smart_mode/mode_card.dart';

class DetailItemScreen extends StatelessWidget {
  const DetailItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: hexToColor(roombg),
              child: Container(
                decoration: BoxDecoration(
                  color: hexToColor(mains2),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(35)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SafeArea(
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 18),
                                        child: GestureDetector(
                                            onTap: () {},
                                            child: const Icon(
                                              Icons.arrow_back_ios,
                                              color: Colors.white,
                                            )),
                                      ),
                                      TextWidget(
                                          text: 'Back',
                                          size: 12,
                                          weight: FontWeight.w400,
                                          color: Colors.white),
                                    ],
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 150,
                                    alignment: Alignment.center,
                                    child: TextWidget(
                                        text: 'Lamp',
                                        size: 24,
                                        weight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 17, top: 10),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextWidget(
                                              text: 'Dining Room',
                                              size: 14,
                                              weight: FontWeight.w400,
                                              color: Colors.white),
                                          Container(
                                            height: 24,
                                            child: Image.asset(
                                              'assets/icon_off.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                TextWidget(
                                                    text: '80',
                                                    size: 50,
                                                    weight: FontWeight.w600,
                                                    color: Colors.white),
                                                TextWidget(
                                                    text: '%',
                                                    size: 24,
                                                    weight: FontWeight.w600,
                                                    color: Colors.white),
                                              ],
                                            ),
                                            TextWidget(
                                                text: 'Brightness',
                                                size: 16,
                                                weight: FontWeight.w400,
                                                color: Colors.white)
                                          ]),
                                    ])),
                          ]),
                      Positioned(
                          right: 40,
                          child: Container(
                              height: 197,
                              child: Image.asset(
                                'assets/img_6.png',
                                fit: BoxFit.fill,
                              ))),
                    ]),
                    Container(
                      margin: EdgeInsets.only(left: 18, right: 18, bottom: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                              text: 'Insensity',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Colors.white),
                          Divider(
                            thickness: 2,
                            color: hexToColor(roombg),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextWidget(
                              text: 'Usages',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Colors.white),
                          Usages(title: 'Use Today', unit: '50 watt'),
                          Usages(title: 'Use Week', unit: '500 kwh'),
                          Usages(title: 'Use Month', unit: '5000 kwh'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: hexToColor(mains2),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: hexToColor(roombg),
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(35)),
                ),
                child: Column(
                  children: [
                    Container(
                        margin:
                            const EdgeInsets.only(left: 16, right: 16, top: 16),
                        child: SeeAll(
                            text1: 'Schedule', text2: 'icon', text3: '4')),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 18, right: 18, bottom: 18),
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return ModeCard();
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
