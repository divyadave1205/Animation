// // ignore_for_file: prefer_const_constructors

// import 'dart:io';
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'package:flutter/foundation.dart';

// class CameraUse extends StatefulWidget {
//   final CameraDescription? camera;

//   const CameraUse({Key? key, this.camera}) : super(key: key);

//   @override
//   State<CameraUse> createState() => _CameraUseState();
// }

// class _CameraUseState extends State<CameraUse> {
//   late CameraController controller;
//   late Future<void> initializeControllerFuture;

//   @override
//   void initState() {
//     controller = CameraController(widget.camera!, ResolutionPreset.medium);
//     initializeControllerFuture = controller.initialize();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: initializeControllerFuture,
//         builder: (context, snapShot) {
//           if (snapShot.connectionState == ConnectionState.done) {
//             return CameraPreview(controller);
//           } else {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           try {
//             await initializeControllerFuture;
//             final image = await controller.takePicture();
//           } catch (e) {
//             print(e);
//           }
//         },
//         child: Icon(Icons.camera_alt),
//       ),
//     );
//   }
// }
