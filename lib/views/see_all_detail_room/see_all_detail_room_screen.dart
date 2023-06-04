import 'package:flutter/material.dart';
import 'package:smart_home/views/common_widget/frame34.dart';
import 'package:smart_home/views/common_widget/frame38.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';

class SeeAllDetailRoomScreen extends StatelessWidget {
  const SeeAllDetailRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: Row(
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
            TextWidget(text: 'Back', size: 12, weight: FontWeight.w400),
          ],
        ),
        title: TextWidget(text: 'Room', size: 18, weight: FontWeight.w600),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
        ],
      ),
      body: Column(
        children: [
          Frame34(text1: 'Your Rooms', text2: '10'),
          Frame38(text: 'Add New Room'),
        ],
      ),
    );
  }
}
