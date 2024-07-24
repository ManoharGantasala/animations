import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/animated_default_text_style_controller.dart';

class AnimatedDefaultTextStyleView
    extends GetView<AnimatedDefaultTextStyleController> {
  const AnimatedDefaultTextStyleView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedDefaultTextStyleView'),
          centerTitle: true,
        ),
        body: Obx(
          () => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120,
                  child: AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 300),
                    style: TextStyle(
                        fontSize: controller.fontSize.value,
                        color: controller.color.value),
                    child: const Text("Flutter"),
                  ),
                ),
                const SizedBox(height: 28),
                TextButton(
                    onPressed: () {
                      controller.first.value = !controller.first.value;
                      controller.fontSize.value =
                          controller.first.value ? 90 : 60;
                      controller.color.value =
                          controller.first.value ? Colors.blue : Colors.red;
                    },
                    child: Text("Switch"))
              ],
            ),
          ),
        ));
  }
}
