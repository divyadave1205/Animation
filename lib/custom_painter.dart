// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomDesign extends StatefulWidget {
  const CustomDesign({Key? key}) : super(key: key);

  @override
  _CustomDesignState createState() => _CustomDesignState();
}

class _CustomDesignState extends State<CustomDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: CustomShape(),
        child: Container(),
      ),
    );
  }
}

class CustomShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.red.shade700
      ..style = PaintingStyle.fill;
    var path1 = Path();
    path1.moveTo(0, size.height * 0.7);
    path1.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.7,
      size.width * 0.5,
      size.height * 0.8,
    );
    path1.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.9,
      size.width * 1,
      size.height * 0.87,
    );
    path1.lineTo(size.width, size.height);
    path1.lineTo(0, size.height);
    path1.close();
    var paint2 = Paint()
      ..color = Colors.blue.shade700
      ..style = PaintingStyle.fill;
    var path2 = Path();
    path2.moveTo(size.width, size.height * 0.80);
    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height);
    path2.lineTo(0, size.height * 0.87);
    path2.quadraticBezierTo(
      size.width * 0.20,
      size.height * 0.8,
      size.width * 0.35,
      size.height * 0.80,
    );
    path2.quadraticBezierTo(
      size.width * 0.40,
      size.height * 0.8,
      size.width * 0.5,
      size.height * 0.80,
    );
    path2.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.8,
      size.width,
      size.height * 0.65,
    );
    path2.close();
    var paint3 = Paint()
      ..color = Colors.green.shade700
      ..style = PaintingStyle.fill;
    var path3 = Path();
    path3.moveTo(0, size.height * 0.87);
    path3.lineTo(size.width / 2, size.height);
    path3.lineTo(0, size.height);
    path3.moveTo(0, size.height * 0.87);

    path3.cubicTo(size.width * 0.02, size.height * 0.87, 0, size.height * 0.80,
        size.width * 0.5, size.height);

    path3.close();
    var paint4 = Paint()
      ..color = Colors.cyan.shade700
      ..style = PaintingStyle.fill;
    var round1 = Offset(size.width, size.height * 0.05);
    var paint5 = Paint()
      ..color = Colors.yellow.shade700
      ..style = PaintingStyle.fill;
    var round2 = Offset(size.width * 0.5, size.height * 0.05);

    canvas.drawPath(path1, paint1);
    canvas.drawPath(path2, paint2);
    canvas.drawPath(path3, paint3);
    canvas.drawCircle(round1, 170, paint4);
    canvas.drawCircle(round2, 170, paint5);
  }

  @override
  bool shouldRepaint(covariant CustomShape oldDelegate) {
    return true;
  }
}
