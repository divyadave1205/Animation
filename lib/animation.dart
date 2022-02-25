// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Animations extends StatefulWidget {
  const Animations({Key? key}) : super(key: key);

  @override
  _AnimationsState createState() => _AnimationsState();
}

class _AnimationsState extends State<Animations>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;
  Animation? reverseAnimation;
  bool? isFlipped;
  AnimationStatus? status;
  @override
  void initState() {
    isFlipped = false;
    controller = AnimationController(
      duration: Duration(seconds: 4),
      vsync: this,
    );
    animation = Tween(begin: 0, end: pi).animate(controller!);
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3f4f5e),
      body: Center(
        child: AnimatedBuilder(
            child: isFlipped == true
                ? Stack(
                    children: [
                      Container(
                        height: 250,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFDFE2DF),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        child: Container(
                          height: 50,
                          width: 380,
                          color: Colors.black,
                        ),
                      ),
                      Positioned(
                        top: 85,
                        left: 10,
                        child: Container(
                          height: 50,
                          width: 360,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 105,
                        left: 80,
                        child: Transform(
                          transform: Matrix4.rotationY(pi),
                          child: Text(
                            "0123 456",
                            style: TextStyle(
                              color: Color(0xff242121),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Stack(
                    children: [
                      Container(
                        height: 250,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfff4f5f4),
                        ),
                      ),
                      Positioned(
                        top: 30,
                        child: Container(
                          height: 400,
                          width: 400,
                          decoration: BoxDecoration(
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 5,
                                blurRadius: 8,
                                offset: Offset(-5, -5),
                                color: Color(0xffe4e5e4),
                              ),
                            ],
                            color: Color(0xfff3f3f3),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Text(
                          "Mastercard.",
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xff242121),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 60,
                        left: 30,
                        child: Container(
                          height: 80,
                          width: 80,
                          child: Image.asset(
                              "assets/download-removebg-preview (5).png"),
                        ),
                      ),
                      Positioned(
                        top: 140,
                        left: 20,
                        child: Text(
                          "5412 7512 3412 3456",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff242121),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 163,
                        left: 20,
                        child: Text(
                          "Valid Time",
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff242121),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 173,
                        left: 18,
                        child: Text(
                          "12/23",
                          style: TextStyle(
                            fontSize: 22,
                            color: Color(0xff242121),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 200,
                        left: 20,
                        child: Text(
                          "Lee M. Cardholder",
                          style: TextStyle(
                            fontSize: 22,
                            color: Color(0xff242121),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 170,
                        left: 290,
                        child: Container(
                          height: 80,
                          width: 80,
                          child: Image.asset(
                              "assets/download-removebg-preview (6).png"),
                        ),
                      ),
                    ],
                  ),
            animation: animation!,
            builder: (context, child) {
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(animation!.value.toDouble()),
                child: child,
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          isFlipped == false
              ? setState(() {
                  controller?.forward().timeout(
                    Duration(seconds: 2),
                    onTimeout: () {
                      setState(() {
                        isFlipped = true;
                      });
                    },
                  );
                })
              : setState(() {
                  controller?.reverse().timeout(
                    Duration(seconds: 2),
                    onTimeout: () {
                      setState(() {
                        isFlipped = false;
                      });
                    },
                  );
                });
        },
        child: Icon(Icons.flip),
      ),
    );
  }
}
