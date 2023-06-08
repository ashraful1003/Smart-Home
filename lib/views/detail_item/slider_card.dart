import 'package:flutter/material.dart';

class SliderCard extends StatefulWidget {
  const SliderCard({Key? key}) : super(key: key);

  @override
  State<SliderCard> createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  double brightness = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-128,
      child: SliderTheme(
          data: SliderTheme.of(context).copyWith(),
          child: Slider(
            label: brightness.abs().toString(),
            min: 0.0,
            max: 1.0,
            value: brightness,
            onChanged: (double value) {
              setState(() {
                brightness = value;
              });
            },
          )),
    );
  }
}
