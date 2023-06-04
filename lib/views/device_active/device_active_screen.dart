import 'package:flutter/material.dart';

import '../common_widget/frame34.dart';
import '../common_widget/frame38.dart';
import '../common_widget/text_widget.dart';

class DeviceActiveScreen extends StatelessWidget {
  const DeviceActiveScreen({Key? key}) : super(key: key);

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
        title: TextWidget(
            text: 'Devices Active', size: 18, weight: FontWeight.w600),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
        ],
      ),
      body: Column(
        children: [
          Frame34(text1: 'Devices', text2: '8'),
          Frame38(text: 'Turn Off All Devices'),
        ],
      ),
    );
  }
}
