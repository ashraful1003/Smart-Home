import 'package:flutter/material.dart';

import '../common_widget/text_widget.dart';

class Frame41 extends StatelessWidget {
  Frame41(
      {Key? key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4})
      : super(key: key);

  String image, text1, text2, text3, text4;

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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 30,
                height: 18,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey.shade600),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Positioned(
                      left: 5,
                      child: TextWidget(
                          text: text1, size: 12, weight: FontWeight.w600),
                    ),
                    Positioned(
                      top: 2,
                      left: 18,
                      child: Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    Positioned(
                        right: 3,
                        bottom: 1,
                        child: TextWidget(
                            text: 'c', size: 8, weight: FontWeight.w400)),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: 50,
            height: 50,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Column(
              children: [
                TextWidget(text: text2, size: 12, weight: FontWeight.w600),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.grey.shade700,
                      ),
                      child: TextWidget(
                          text: text3, size: 10, weight: FontWeight.w600),
                    ),
                    TextWidget(text: text4, size: 10, weight: FontWeight.w400),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
