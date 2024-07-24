import 'package:get/get.dart';

import '../controllers/animation_cross_fade_controller.dart';

class AnimationCrossFadeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimationCrossFadeController>(
      () => AnimationCrossFadeController(),
    );
  }
}
