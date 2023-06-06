import 'package:flutter/material.dart';

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0,0);
    path0.lineTo(size.width,0);
    path0.lineTo(size.width,size.height);
    path0.lineTo(size.width,size.height);
    path0.lineTo(size.width*0.9687500,size.height*0.9420000);
    path0.lineTo(size.width*0.9275000,size.height*0.9100000);
    path0.lineTo(size.width*0.8750000,size.height*0.9000000);
    path0.lineTo(size.width*0.4375000,size.height*0.9000000);
    path0.lineTo(0,size.height*0.9005000);
    path0.lineTo(0,size.height*0.4000000);
    path0.lineTo(0,size.height*0.3000000);
    path0.lineTo(0,0);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


// class RPSCustomPainter extends CustomPainter{
//
//   @override
//   void paint(Canvas canvas, Size size) {
//
//
//
//     Paint paint0 = Paint()
//       ..color = const Color.fromARGB(255, 33, 150, 243)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 1;
//
//
//     Path path0 = Path();
//     path0.moveTo(0,0);
//     path0.lineTo(size.width,0);
//     path0.lineTo(size.width,size.height*0.3000000);
//     path0.lineTo(size.width,size.height);
//     path0.lineTo(size.width*0.9687500,size.height*0.9420000);
//     path0.lineTo(size.width*0.9275000,size.height*0.9100000);
//     path0.lineTo(size.width*0.8750000,size.height*0.9000000);
//     path0.lineTo(size.width*0.4375000,size.height*0.9000000);
//     path0.lineTo(0,size.height*0.9005000);
//     path0.lineTo(0,size.height*0.4000000);
//     path0.lineTo(0,size.height*0.3000000);
//     path0.lineTo(0,0);
//     path0.close();
//
//     canvas.drawPath(path0, paint0);
//
//
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
//
// }
//
