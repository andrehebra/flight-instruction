import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/controllers/counter_controller.dart';
import 'package:web_app/pages/other.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Clicks: ${counterController.counter.value}",
            ),
            ElevatedButton(
                onPressed: () {
                  counterController.increment();
                  Get.to(OtherScreen());
                },
                child: const Text("go to another page"))
          ],
        ),
      ),
    );
  }
}
