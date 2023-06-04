import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget {
  ImageWidget({Key? key, required this.image}) : super(key: key);

  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.only(right: 8),
        child: Image.asset(image, fit: BoxFit.fill));
  }
}
