import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: AnimatedBuilder(
        animation: controller,
        child: const Icon(Icons.person),
        builder: (context, child) {
          return Transform.rotate(
            angle: controller.animationController.value * 2.0 * math.pi,
          );
        },
      ),
    );
  }
}
