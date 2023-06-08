import 'package:flutter/material.dart';
import 'package:smart_home/views/detail_item/detail_item_sceen.dart';
import 'package:smart_home/views/detail_room/detail_room_screen.dart';
import 'package:smart_home/views/device_active/device_active_screen.dart';
import 'package:smart_home/views/home/home_screen.dart';
import 'package:smart_home/views/landing_screen.dart';
import 'package:smart_home/views/see_all_detail_room/see_all_detail_room_screen.dart';
import 'package:smart_home/views/smart_mode/smart_mode_screen.dart';
import 'package:smart_home/views/splash/splash_screen.dart';
import 'package:smart_home/views/usage/usage_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Home',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
