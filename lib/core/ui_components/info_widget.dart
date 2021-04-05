import 'package:flutter/material.dart';
import 'package:responsive_ui/core/functions/git_device_type.dart';
import 'package:responsive_ui/core/models/device-info.dart';
class InfoWidget extends StatelessWidget {
  final Widget Function (BuildContext context,DeviceInfo deviceInfo) builder ;

  const InfoWidget({Key key, this.builder}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constrains){
            var mediaQueryData = MediaQuery.of(context);
          var deviceInfo = DeviceInfo(
            oreientation: mediaQueryData.orientation,
             deviceType: getDeviceType(mediaQueryData),
            screenHeight: mediaQueryData.size.height,
            screenWidth: mediaQueryData.size.width,
            localHeight: constrains.maxHeight,
            localWidth: mediaQueryData.size.width

          );
          return builder(context,deviceInfo);

        });
  }
}
