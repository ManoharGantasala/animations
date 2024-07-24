import 'package:animationsexample/app/modules/animationCrossFade/controllers/animation_cross_fade_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimationCrossFadeView extends GetView<AnimationCrossFadeController> {
  const AnimationCrossFadeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AnimationCrossFadeView'),
          centerTitle: true,
        ),
        body: Obx(
          () => Column(
            children: [
              const SizedBox(
                width: double.infinity,
                height: 100,
              ),
              TextButton(
                onPressed: () {
                  controller.isFaded.value = !controller.isFaded.value;
                },
                child: const Text("Switch"),
              ),
              AnimatedCrossFade(
                firstChild: const Icon(
                  Icons.person,
                  size: 220,
                ),
                secondChild: const Icon(
                  Icons.network_cell,
                  size: 220,
                ),
                crossFadeState: controller.isFaded.value
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(
                  seconds: 1,
                ),
              )
            ],
          ),
        ));
  }
}
