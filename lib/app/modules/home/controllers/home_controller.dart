import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final AnimationController animationController = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  );
  @override
  void onInit() {
    super.onInit();
    animationController.forward(); // Start the animation
  }

  @override
  void dispose() {
    animationController.dispose(); // Dispose when done
    super.dispose();
  }
}
