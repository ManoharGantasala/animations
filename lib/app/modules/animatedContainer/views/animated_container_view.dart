import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/animated_container_controller.dart';

class AnimatedContainerView extends GetView<AnimatedContainerController> {
  const AnimatedContainerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainerView'),
        centerTitle: true,
      ),
      body: Obx(
        () => GestureDetector(
          onTap: () {
            if (controller.isSelected.value == 0) {
              controller.isSelected.value = 1;
            } else {
              controller.isSelected.value = 0;
            }
          },
          child: Center(
              child: AnimatedContainer(
            width: controller.isSelected.value == 0 ? 200 : 100,
            height: controller.isSelected.value == 0 ? 100 : 200,
            color: controller.isSelected.value == 0
                ? Colors.blueGrey
                : Colors.green,
            duration: const Duration(seconds: 2),
            alignment: controller.isSelected.value == 0
                ? Alignment.center
                : Alignment.topCenter,
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(),
          )),
        ),
      ),
    );
  }
}
