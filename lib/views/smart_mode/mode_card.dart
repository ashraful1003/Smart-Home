import 'package:flutter/material.dart';
import 'package:smart_home/views/common_widget/image_widget.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';

class ModeCard extends StatelessWidget {
  const ModeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageWidget(image: ''),
              Column(
                children: [
                  TextWidget(
                      text: 'Smart Lamp', size: 14, weight: FontWeight.w600, color: Colors.black,),
                  TextWidget(
                      text: 'dining room', size: 10, weight: FontWeight.w400, color: Colors.black,),
                ],
              ),
            ],
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
        ],
      ),
    );
  }
}
