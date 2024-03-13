// ignore_for_file: unused_local_variable

import 'package:camera/camera.dart';
import 'package:eyespot/features/personalization/controller/scan_controller.dart';
import 'package:eyespot/features/personalization/screens/gallery_screen.dart';
import 'package:eyespot/features/personalization/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' show Get, GetBuilder, GetNavigation;
import 'package:image_picker/image_picker.dart';

import '../../../utils/device/device_utility.dart';
import 'camera_screen.dart';

class HomeScreen extends StatelessWidget {
  final ImagePicker _picker = ImagePicker();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EDeviceUtils.hideStatusBar();
    return Scaffold(
      body: GetBuilder<ScanController>(
        init: ScanController(),
        dispose: (controller) => controller.dispose(),
        builder: (controller) {
          return Center(
            child: controller.isCameraInitialized.value
                ? CameraScreen(controller: controller,): const CircularProgressIndicator(),
          );
        },
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: () => Get.to(const GalleryScreen()), child: const Icon(Icons.photo_library),),
          ElevatedButton(onPressed: (){}, child: const Icon(Icons.camera_outlined, size: 60,),),
          ElevatedButton(onPressed: ()=> Get.to(const SettingScreen()), child: const Icon(Icons.settings)),
        ],
      ),
    );
  }
}

