import 'package:flutter/material.dart';
import 'package:web_app/helpers/responsive.dart';
import '../constants/style.dart';
import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "assets/airplane.png",
                    width: 28,
                  ),
                )
              ],
            )
          : IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
      elevation: 0,
      backgroundColor: Colors.white,
      title: Row(
        children: [
          const Visibility(
              child: CustomText(
                  text: "Flight Instruction", weight: FontWeight.bold)),
          Expanded(child: Container()),
          IconButton(
            icon: Icon(Icons.settings, color: dark),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: dark.withOpacity(.7),
                  )),
              Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: light, width: 2),
                    ),
                  ))
            ],
          ),
          SizedBox(
            width: 8,
          ),
          Container(width: 1, height: 22, color: lightGrey),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Container(
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundColor: light,
                  child: Icon(Icons.person_outline, color: dark),
                )),
          )
        ],
      ),
    );
