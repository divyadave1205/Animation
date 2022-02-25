import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class DownloadFromUrl extends StatefulWidget {
  DownloadFromUrl({Key? key}) : super(key: key);

  @override
  State<DownloadFromUrl> createState() => _DownloadFromUrlState();
}

class _DownloadFromUrlState extends State<DownloadFromUrl> {
  Uint8List? uint8list;
  Future getResponse() async {
    final responseData = await http
        .get(Uri.parse("https://www.xnview.com/img/app-xnsoft-360.png"));
    uint8list = responseData.bodyBytes;
    File? file;
    final a1 = "/storage/emulated/0/Download/demoTextFile.png";

    File(a1).writeAsBytesSync(uint8list!);
    // final dir = await getdoc();
    // print(dir?.path);
    // return dir?.path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              getResponse().then((value) {
                uint8list == null ? Text("No Image Found") : print(uint8list!);
                setState(() {});
              });
            },
            child:
                uint8list == null ? Text("Download") : Image.memory(uint8list!),
          ),
        ),
      ),
    );
  }
}
