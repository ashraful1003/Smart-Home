import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hexToColor(mains2),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 24, top: 57),
              child: TextWidget(
                text: "smartme",
                size: 16,
                weight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24, top: 67, right: 55),
              child: TextWidget(
                text: "Welcome Home",
                size: 28,
                weight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24, top: 8, right: 55, bottom: 66),
              child: TextWidget(
                text:
                    "no matter how far you go,home will be your destination to return to. let's make your home comfortable",
                size: 14,
                weight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            Center(
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img.png'), fit: BoxFit.fill)),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 16, top: 70, right: 16),
                decoration: BoxDecoration(
                  color: hexToColor(button),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: "Get Started",
                      size: 14,
                      weight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.skip_next_outlined,
                      color: Colors.white,
                    ),
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
