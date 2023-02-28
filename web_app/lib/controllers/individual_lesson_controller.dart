import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/style.dart';
import '../lessons/principles_of_flight/principles_of_flight.dart';

class Lesson extends StatelessWidget {
  final List<Widget> children;
  const Lesson({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: Container(
              color: dark,
              constraints: BoxConstraints(maxWidth: 1000),
              child: ListView(
                padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
                children: lesson.information,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
