import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
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
      appBar: AppBar(
        backgroundColor: hexToColor(mains2),
        title: TextWidget(
            text: 'Smart Mode',
            size: 24,
            weight: FontWeight.w600,
            color: Colors.white),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.filter,
                  color: hexToColor(mains2),
                ),
              )),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: hexToColor(roombg),
            child: Column(
              children: [
                Container(
                  color: hexToColor(mains2),
                  child: TextField(
                    controller: controller,
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Frame34(text1: 'Your Smart Mode', text2: '10'),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 18),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ModeCard();
                      }),
                ),
                Frame38(text: 'Add New Smart Mode'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
