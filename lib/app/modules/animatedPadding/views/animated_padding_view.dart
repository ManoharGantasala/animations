import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/animated_padding_controller.dart';

class AnimatedPaddingView extends GetView<AnimatedPaddingController> {
  const AnimatedPaddingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPaddingView'),
        centerTitle: true,
      ),
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                controller.padValue.value =
                    controller.padValue.value == 0.0 ? 100.0 : 0.0;
              },
              child: const Text("Change Padding"),
            ),
            AnimatedPadding(
              padding: EdgeInsets.all(controller.padValue.value),
              duration: const Duration(seconds: 2),
              curve: Curves.bounceOut,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                color: Colors.orangeAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
