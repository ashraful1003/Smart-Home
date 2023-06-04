import 'package:flutter/material.dart';
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  TextWidget(
                      text: 'Your Smart Mode',
                      size: 14,
                      weight: FontWeight.w600),
                  Container(
                    height: 18,
                    width: 18,
                    margin: EdgeInsets.only(left: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    alignment: Alignment.center,
                    child: TextWidget(
                        text: '10', size: 10, weight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ModeCard();
                  }),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
              padding: EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(8)),
              alignment: Alignment.center,
              child: TextWidget(
                  text: 'Add New Smart Mode',
                  size: 14,
                  weight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
