import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/animated_list_controller.dart';

class AnimatedListView extends GetView<AnimatedListController> {
  const AnimatedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedListView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 12),
          IconButton(
            onPressed: () {
              controller.addItem();
            },
            icon: const Icon(Icons.add),
          ),
          Expanded(
            child: AnimatedList(
              key: controller.key,
              initialItemCount: 0,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  sizeFactor: animation,
                  // key: UniqueKey(),
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    color: Colors.orangeAccent,
                    child: ListTile(
                      title: Text(
                        controller.items[index],
                        style: const TextStyle(fontSize: 24),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          controller.removeItem(index);
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
