import 'package:flutter/material.dart';

import '../../constants.dart';
import '../common_widget/see_all.dart';
import '../common_widget/text_widget.dart';
import '../smart_mode/mode_card.dart';

class DetailItemScreen extends StatelessWidget {
  const DetailItemScreen({Key? key}) : super(key: key);

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
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
            TextWidget(
              text: 'Back',
              size: 12,
              weight: FontWeight.w400,
              color: Colors.white,
            ),
          ],
        ),
        centerTitle: true,
        title: TextWidget(
            text: 'Lamp',
            size: 24,
            weight: FontWeight.w600,
            color: Colors.white),
      ),
      body: Column(
        children: [
          Container(
            color: hexToColor(roombg),
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                color: hexToColor(mains2),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35)),
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
                borderRadius: BorderRadius.only(topRight: Radius.circular(35)),
              ),
              child: Column(
                children: [
                  Container(
                      margin:
                          const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: SeeAll(text1: 'Schedule', text2: 'icon', text3: '4')),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 18),
                    child: ListView.builder(
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
    );
  }
}
