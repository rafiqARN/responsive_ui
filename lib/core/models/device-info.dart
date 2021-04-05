 import 'package:flutter/cupertino.dart';
import 'package:responsive_ui/core/enums/device_type.dart';
class DeviceInfo{
  final Orientation oreientation;
  final DeviceType deviceType;
  final double screenHeight ;
  final double screenWidth ;
  final double localWidth;
  final double localHeight;

  DeviceInfo({this.oreientation, this.deviceType, this.screenHeight, this.screenWidth, this.localWidth, this.localHeight});


 }