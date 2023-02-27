import 'package:flutter/material.dart';

import '../controllers/individual_lesson_controller.dart';
import '../lessons/principles_of_flight/principles_of_flight.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lesson(children: contents),
      ],
    );
  }
}
