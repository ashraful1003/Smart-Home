import 'package:flutter/material.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';

class Frame38 extends StatelessWidget {
  Frame38({Key? key, required this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
      padding: EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.7),
          borderRadius: BorderRadius.circular(8)),
      alignment: Alignment.center,
      child: TextWidget(
          text: text,
          size: 14,
          weight: FontWeight.w600, color: Colors.white,),
    );
  }
}
