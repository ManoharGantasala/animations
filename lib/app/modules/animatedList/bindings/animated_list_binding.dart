import 'package:get/get.dart';

import '../controllers/animated_list_controller.dart';

class AnimatedListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedListController>(
      () => AnimatedListController(),
    );
  }
}
