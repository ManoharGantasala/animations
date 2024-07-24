import 'package:get/get.dart';

import '../controllers/animated_default_text_style_controller.dart';

class AnimatedDefaultTextStyleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedDefaultTextStyleController>(
      () => AnimatedDefaultTextStyleController(),
    );
  }
}
