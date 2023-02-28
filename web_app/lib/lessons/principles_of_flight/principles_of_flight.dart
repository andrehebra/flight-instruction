import 'package:flutter/material.dart';

import '../../controllers/lesson_plan_controller.dart';

SingleLesson lesson = SingleLesson(0, contents);

List<Widget> contents = [
  Header(
      "there is somethign going on here and i have to write something that is going to be really tall so that I can tell if i have the space provided in the proper way and im not sure how long a string can really be in flutter in the first place so were going to have to see about that"),
  Text("I think that it might be working and im not sure"),
  Header("well i guess well have to see about that"),
  CustomImage("assets/airplane.png"),
  Image(image: AssetImage("assets/airplane.png")),
];
