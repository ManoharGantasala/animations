import 'package:get/get.dart';

import '../controllers/animated_opacity_controller.dart';

class AnimatedOpacityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedOpacityController>(
      () => AnimatedOpacityController(),
    );
  }
}
