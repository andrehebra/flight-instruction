import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:web_app/controllers/counter_controller.dart';

class OtherScreen extends StatelessWidget {
  OtherScreen({super.key});

  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Screen was clicked ${_counterController.counter.value} times"),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("go to another page"))
      ],
    ));
  }
}
