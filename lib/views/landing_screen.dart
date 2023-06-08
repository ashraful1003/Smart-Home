import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/views/home/home_screen.dart';
import 'package:smart_home/views/smart_mode/smart_mode_screen.dart';
import 'package:smart_home/views/usage/usage_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int currentIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    SmartModeScreen(),
    const UsageScreen(),
    const Center(
      child: Text(
        'Profile',
        style: optionStyle,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: _widgetOptions.elementAt(currentIndex),
        bottomNavigationBar: Container(
          height: 88,
          decoration: BoxDecoration(
            color: hexToColor(mains2),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          ),
          child: Center(
            child: ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                    HapticFeedback.lightImpact();
                  });
                },
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      width: index == currentIndex ? 116 : 65,
                      alignment: Alignment.center,
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        height: 55,
                        width: index == currentIndex ? 121 : 68,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      width: index == currentIndex
                          ? displayWidth * .31
                          : displayWidth * .18,
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              /// icon & text r modhe faka
                              AnimatedContainer(
                                duration: Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                width: index == currentIndex
                                    ? displayWidth * .13
                                    : 0,
                              ),
                              Visibility(
                                visible: index == currentIndex ? true : false,
                                child: AnimatedOpacity(
                                  opacity: index == currentIndex ? 1 : 0,
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  child: Text(
                                    index == currentIndex
                                        ? '${listOfStrings[index]}'
                                        : '',
                                    style: TextStyle(
                                      color: hexToColor(mains2),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              AnimatedContainer(
                                duration: Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                width: 20,
                              ),
                              Icon(
                                listOfIcons[index],
                                size: 24,
                                color: hexToColor(mains2),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )

        // Container(
        //   decoration: BoxDecoration(
        //     color: hexToColor(mains2),
        //     boxShadow: [
        //       BoxShadow(
        //         blurRadius: 20,
        //         color: Colors.black.withOpacity(.1),
        //       )
        //     ],
        //   ),
        //   child: SafeArea(
        //     child: Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        //       child: GNav(
        //         gap: 8,
        //         activeColor: Colors.black,
        //         iconSize: 24,
        //         tabBorderRadius: 8,
        //         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        //         tabBackgroundColor: Colors.white,
        //         // color: Colors.black,
        //         tabs: [
        //           GButton(
        //             icon: Icons.home,
        //             text: 'Home',
        //             textColor: hexToColor(mains2),
        //             iconColor: Colors.black,
        //             iconActiveColor: hexToColor(mains2),
        //           ),
        //           GButton(
        //             icon: Icons.webhook,
        //             text: 'Smart',
        //             textColor: hexToColor(mains2),
        //             iconColor: Colors.black,
        //             iconActiveColor: hexToColor(mains2),
        //           ),
        //           GButton(
        //             icon: Icons.pie_chart,
        //             text: 'Usage',
        //             borderRadius: BorderRadius.circular(7),
        //             textColor: hexToColor(mains2),
        //             iconColor: Colors.black,
        //             iconActiveColor: hexToColor(mains2),
        //           ),
        //           GButton(
        //             icon: Icons.person,
        //             text: 'Profile',
        //             textColor: hexToColor(mains2),
        //             iconColor: Colors.black,
        //             iconActiveColor: hexToColor(mains2),
        //           ),
        //         ],
        //         selectedIndex: _selectedIndex,
        //         onTabChange: (index) {
        //           setState(() {
        //             _selectedIndex = index;
        //           });
        //         },
        //       ),
        //     ),
        //   ),
        // ),
        );
  }
}
