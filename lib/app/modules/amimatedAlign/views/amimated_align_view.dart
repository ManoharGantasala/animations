import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/amimated_align_controller.dart';

class AmimatedAlignView extends GetView<AmimatedAlignController> {
  const AmimatedAlignView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AmimatedAlignView'),
        centerTitle: true,
      ),
      body: Obx(
        () => GestureDetector(
          onTap: () {
            controller.selected.value = !controller.selected.value;
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.blueGrey,
            child: AnimatedAlign(
              alignment: controller.selected.value
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              duration: const Duration(seconds: 1),
              curve: Curves.bounceOut,
              child: const FlutterLogo(
                size: 200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
