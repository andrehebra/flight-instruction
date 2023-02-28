import 'package:flutter/material.dart';

class AllLessons {}

class LessonPlan extends AllLessons {}

class SingleLesson extends LessonPlan {
  int identifier;
  List<Widget> information;

  SingleLesson(this.identifier, this.information);

  List<Widget> getLesson() {
    return information;
  }

  int getIdentifier() {
    return identifier;
  }
}

Widget Header(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );
}

Widget CustomImage(String asset) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Flexible(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(15),
          constraints: BoxConstraints(maxWidth: 700),
          child: Image(
            image: AssetImage(asset),
          ),
        ),
      ),
    ],
  );
}
