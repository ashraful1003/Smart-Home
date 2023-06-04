import 'package:flutter/material.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';

class SeeAllDetailRoomScreen extends StatelessWidget {
  const SeeAllDetailRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
            TextWidget(text: 'Back', size: 12, weight: FontWeight.w400),
          ],
        ),
        title: TextWidget(text: 'Room', size: 18, weight: FontWeight.w600),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
        ],
      ),
    );
  }
}
