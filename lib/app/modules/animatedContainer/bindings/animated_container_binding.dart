import 'package:get/get.dart';

import '../controllers/animated_container_controller.dart';

class AnimatedContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedContainerController>(
      () => AnimatedContainerController(),
    );
  }
}
