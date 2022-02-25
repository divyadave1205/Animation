// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';

class Permissions extends StatefulWidget {
  const Permissions({Key? key}) : super(key: key);

  @override
  _PermissionsState createState() => _PermissionsState();
}

class _PermissionsState extends State<Permissions> {
  Future<void> setlocation() async {
    final serviceStationLocation = await Permission.location.isGranted;
    bool isLocation = serviceStationLocation == ServiceStatus.enabled;
    final status = await Permission.locationWhenInUse.request();
    if (status == PermissionStatus.granted) {
      print("Permission Granted");
    } else if (status == PermissionStatus.denied) {
      print("Permission Denied");
    } else if (status == PermissionStatus.permanentlyDenied) {
      print("Permission Permanently Denied");
      await openAppSettings();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(8),
                    primary: Colors.lightBlue,
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Text("Request Location"),
                  onPressed: () {
                    setlocation();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
