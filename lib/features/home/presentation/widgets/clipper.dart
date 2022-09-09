import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    Path path0 = Path();
    path0.lineTo(width - 100.w, 0);
    path0.quadraticBezierTo(width - 80.w, 20.h, width - 90.w, 60.h);
    path0.quadraticBezierTo(width - 90, height / 2.8, width, height / 2.8);
    path0.lineTo(width, height);
    path0.lineTo(0, height);

    // path0.quadraticBezierTo(size.width * 0.6716500, size.height * 0.5923000,
    //     size.width * 0.4050000, size.height * 0.6024000);
    // path0.lineTo(size.width * 0.3674000, size.height * 0.5876000);
    // path0.quadraticBezierTo(size.width * 0.3500000, size.height * 0.5340000,
    //     size.width * 0.3498000, size.height * 0.2052000);
    path0.close();
    //
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

//
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.3498000, size.height * 0.2052000);
    path0.cubicTo(
        size.width * 0.5742000,
        size.height * 0.2007000,
        size.width * 0.6510000,
        size.height * 0.4151000,
        size.width * 0.6490000,
        size.height * 0.1992000);
    path0.cubicTo(
        size.width * 0.6485500,
        size.height * 0.3089000,
        size.width * 0.6488500,
        size.height * 0.5691000,
        size.width * 0.6504000,
        size.height * 0.6572000);
    path0.quadraticBezierTo(size.width * 0.6716500, size.height * 0.5923000,
        size.width * 0.4050000, size.height * 0.6024000);
    path0.lineTo(size.width * 0.3674000, size.height * 0.5876000);
    path0.quadraticBezierTo(size.width * 0.3500000, size.height * 0.5340000,
        size.width * 0.3498000, size.height * 0.2052000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
///
