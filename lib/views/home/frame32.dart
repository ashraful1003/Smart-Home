import 'package:flutter/material.dart';

import '../common_widget/text_widget.dart';

class Frame32 extends StatelessWidget {
  Frame32({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text5,
    required this.text4,
  }) : super(key: key);

  String image, text1, text2, text3, text4, text5;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 55) / 2,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 50,
                height: 50,
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                children: [
                  TextWidget(text: text1, size: 8, weight: FontWeight.w400),
                  TextWidget(text: text2, size: 10, weight: FontWeight.w600),
                ],
              ),
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    TextWidget(text: text3, size: 12, weight: FontWeight.w600),
                    TextWidget(text: text4, size: 8, weight: FontWeight.w400),
                  ],
                ),
                TextWidget(text: text5, size: 18, weight: FontWeight.w600)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
