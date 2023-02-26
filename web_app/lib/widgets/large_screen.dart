import 'package:flutter/material.dart';
import 'package:web_app/widgets/side_menu.dart';

import '../controllers/individual_lesson_controller.dart';
import '../lessons/principles_of_flight/principles_of_flight.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 250, child: SideMenu()),
        Flexible(
          child: Lesson(children: contents),
        ),
      ],
    );
  }
}
