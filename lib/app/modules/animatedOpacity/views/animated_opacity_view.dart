import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/animated_opacity_controller.dart';

class AnimatedOpacityView extends GetView<AnimatedOpacityController> {
  const AnimatedOpacityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedOpacityView'),
        centerTitle: true,
      ),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: controller.opacityLevel.value,
                duration: const Duration(seconds: 2),
                child: const FlutterLogo(
                  size: 50,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              FilledButton(
                  onPressed: () {
                    controller.opacityLevel.value =
                        controller.opacityLevel.value == 0.0 ? 1.0 : 0.0;
                    // Future.delayed(2.seconds).whenComplete(() {
                    //   controller.opacityLevel.value =
                    //       controller.opacityLevel.value == 0.0 ? 1.0 : 0.0;
                    // });
                  },
                  child: const Text("Fade logo"))
            ],
          ),
        ),
      ),
    );
  }
}
