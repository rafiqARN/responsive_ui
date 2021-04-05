import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_ui/core/ui_components/info_widget.dart';
import 'dart:core';
import 'core/functions/git_device_type.dart';

void main() {
  runApp(DevicePreview(builder:(context) => MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var mediaQueryData =MediaQuery.of(context);
    double screenHeight =MediaQuery.of(context).size.height;
    double screenWidth =MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
      home:Scaffold(
        body: Container(
         color: Colors.black,
          width: screenWidth/2,
          height: screenHeight/2,
          child: Center(
            child: InfoWidget(
              builder: (context,deviceInfo){
                print(deviceInfo.oreientation);
                print(deviceInfo.deviceType);
                print(deviceInfo.screenHeight);
                print(deviceInfo.screenWidth);
                print(deviceInfo.localHeight);
                print(deviceInfo.localWidth);
                       return Container() ;
              },
            )
          ),
        ),
      ),
    );
  }

}
