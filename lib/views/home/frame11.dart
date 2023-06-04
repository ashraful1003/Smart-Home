import 'package:flutter/material.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';

class Frame11 extends StatelessWidget {
  Frame11(
      {Key? key,
      required this.iconData,
      required this.text1,
      required this.text2,
      required this.text3})
      : super(key: key);

  IconData iconData;
  String text1, text2, text3;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 93) / 3,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(4)),
      child: Column(
        children: [
          Icon(iconData),
          TextWidget(text: text1, size: 8, weight: FontWeight.w400),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextWidget(text: text2, size: 12, weight: FontWeight.w600),
              TextWidget(text: text3, size: 8, weight: FontWeight.w600),
            ],
          ),
        ],
      ),
    );
  }
}
