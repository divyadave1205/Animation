import 'package:animation/animation.dart';
import 'package:animation/camera.dart';
import 'package:animation/custom_painter.dart';
import 'package:animation/download.dart';
import 'package:animation/neumorphic.dart';
import 'package:animation/permission.dart';
// import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Future<CameraDescription> setCamera() async {
    //   List<CameraDescription> cameras = await availableCameras();
    //   final firstCamera = cameras.first;
    //   return firstCamera;
    // }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Permissions(),
    );
  }
}
