import 'package:flutter/material.dart';
import 'package:smart_home/views/common_widget/frame34.dart';
import 'package:smart_home/views/common_widget/frame38.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';
import 'package:smart_home/views/smart_mode/mode_card.dart';

class SmartModeScreen extends StatelessWidget {
  SmartModeScreen({Key? key}) : super(key: key);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      text: 'Smart Mode', size: 18, weight: FontWeight.w600),
                  IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit))
                ],
              ),
            ),
            Container(
              child: TextField(
                controller: controller,
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Frame34(text1: 'Your Smart Mode', text2: '10'),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ModeCard();
                  }),
            ),
            Frame38(text: 'Add New Smart Mode'),
          ],
        ),
      ),
    );
  }
}
