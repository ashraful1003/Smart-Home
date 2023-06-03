import 'package:flutter/material.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 24, top: 57),
              child: TextWidget(
                text: "smartme",
                size: 16,
                weight: FontWeight.w600,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24, top: 127, right: 55),
              child: TextWidget(
                text: "Wellcome Home",
                size: 28,
                weight: FontWeight.w600,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24, top: 8, right: 55),
              child: TextWidget(
                text:
                    "no matter how far you go,home will be your destination to return to. let's make your home comfortable",
                size: 14,
                weight: FontWeight.w400,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 48,
                width: 103,
                margin: EdgeInsets.only(left: 248, top: 300, right: 24),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: "next",
                      size: 14,
                      weight: FontWeight.w400,
                    ),
                    SizedBox(width: 8,),
                    Icon(Icons.ac_unit),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
