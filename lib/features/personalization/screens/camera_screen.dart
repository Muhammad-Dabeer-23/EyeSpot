
import 'package:camera/camera.dart';
import 'package:eyespot/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';

import '../controller/scan_controller.dart';

class CameraScreen extends StatelessWidget {


  const CameraScreen({
    super.key,
    required this.controller,
  });

  final ScanController controller;
  @override
  Widget build(BuildContext context) {
    EDeviceUtils.hideStatusBar();
    return CameraPreview(controller.controller);
  }
}