import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({
    Key? key,
    required this.text,
    required this.size,
    required this.weight,
  }) : super(key: key);

  String text;
  double size;
  FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, fontWeight: weight),
    );
  }
}
