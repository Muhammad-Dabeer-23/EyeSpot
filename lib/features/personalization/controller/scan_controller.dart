// ignore_for_file: avoid_print

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class ScanController extends GetxController {

  late CameraController controller;
  late List<CameraDescription> cameras;
  final pageController = PageController();
  Rx<int> currentindex = 0.obs;
  var isCameraInitialized = false.obs;




  @override
  void onInit() {
    super.onInit();
    initCamera();
    
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    isCameraInitialized(false);
    update();
    controller.dispose();
  }





  initCamera() async {
    try {
      cameras = await availableCameras();

      if (await Permission.camera.request().isGranted) {
        controller = CameraController(cameras[0], ResolutionPreset.high);

        await controller.initialize();
        isCameraInitialized(true);
        update();
      } else {
        print("Permission Denied");
      }
    } catch (e) {
      print("Error initializing camera: $e");
    }
  }




  Future<XFile?> takePicture() async {
    try {
      if (!isCameraInitialized.value) {
        print("Camera is not initialized yet");
        return null;
      }
      return await controller.takePicture().whenComplete(() => dispose());
    } catch (e) {
      print("Error taking picture: $e");
      return null;
    }
  }

  void changeScreen(index){
  int page=  currentindex.value = index;
    pageController.jumpToPage(page);
    update();

  }
  void updatePageIndicator(index) => currentindex.value = index;
}
