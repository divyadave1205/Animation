// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Neumorphism extends StatefulWidget {
  const Neumorphism({Key? key}) : super(key: key);

  @override
  _NeumorphismState createState() => _NeumorphismState();
}

class _NeumorphismState extends State<Neumorphism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF55b9f3),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Icon(
            Icons.home,
            size: 80,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(-1.0, -4.0),
                  end: Alignment(1.0, 4.0),
                  colors: [
                    Color(0xFF5bc6ff),
                    Color(0xFF4da7db),
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(35)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF4ca5d8),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Color(0xFF5ecdff),
                    offset: Offset(-5.0, -5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ]),
        ),
      ),
    );
  }
}
