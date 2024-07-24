import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedListController extends GetxController {
  final items = [];
  final GlobalKey<AnimatedListState> key = GlobalKey();

  void addItem() {
    items.insert(0, "Item ${items.length + 1}");
    key.currentState?.insertItem(
      0,
      duration: const Duration(seconds: 1),
    );
  }

  void removeItem(int index) {
    key.currentState!.removeItem(index, (context, animation) {
      return SizeTransition(
        sizeFactor: animation,
        child: const Card(
          margin: EdgeInsets.all(10),
          color: Colors.red,
          child: ListTile(
            title: Text("deleted"),
          ),
        ),
      );
    }, duration: const Duration(seconds: 2));
    items.removeAt(index);
  }
}
