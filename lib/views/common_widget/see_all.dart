import 'package:flutter/material.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';

import '../../constants.dart';

class SeeAll extends StatelessWidget {
  SeeAll(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.text3,
      this.color})
      : super(key: key);

  String text1, text2, text3;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            TextWidget(
                text: text1,
                size: 18,
                weight: FontWeight.w600,
                color: Colors.black),
            Container(
              height: 21,
              width: 21,
              margin: EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: hexToColor(mains2)),
              alignment: Alignment.center,
              child: TextWidget(
                  text: text3,
                  size: 14,
                  weight: FontWeight.w600,
                  color: Colors.white),
            ),
          ],
        ),
        text2 != 'icon'
            ? TextWidget(
                text: text2,
                size: 16,
                weight: FontWeight.w600,
                color: hexToColor(mains2))
            : Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                    color: color == null ? Colors.white : color),
                alignment: Alignment.center,
                child: Icon(
                  Icons.add,
                  color: color == null ? hexToColor(mains2) : Colors.white,
                ),
              )
      ],
    );
  }
}
