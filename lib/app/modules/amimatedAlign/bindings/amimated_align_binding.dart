import 'package:get/get.dart';

import '../controllers/amimated_align_controller.dart';

class AmimatedAlignBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AmimatedAlignController>(
      () => AmimatedAlignController(),
    );
  }
}
