import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/widgets/side_menu_items.dart';

import '../constants/controllers.dart';
import '../constants/style.dart';
import '../helpers/responsive.dart';
import '../routing/routing.dart';
import 'custom_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
        color: light,
        child: ListView(
          children: [
            if (ResponsiveWidget.isSmallScreen(context))
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      SizedBox(width: _width / 48),
                      Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: Image.asset("assets/airplane.png")),
                      Flexible(
                        child: CustomText(
                          text: "Flight Instruction",
                          size: 20,
                          weight: FontWeight.bold,
                          color: active,
                        ),
                      ),
                      SizedBox(
                        width: _width / 48,
                      )
                    ],
                  ),
                ],
              ),
            SizedBox(height: 40),
            Divider(
              color: lightGrey.withOpacity(.1),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: sideMenuItems
                  .map(
                    (itemName) => SideMenuItem(
                      itemName: itemName == AuthenticationPageRoute
                          ? "Log Out"
                          : itemName,
                      onTap: () {
                        if (itemName == AuthenticationPageRoute) {
                          //TODO:: go to authentication page
                        }

                        if (!menuController.isActive(itemName)) {
                          menuController.changeActiveItemTo(itemName);
                          if (ResponsiveWidget.isSmallScreen(context)) {
                            Get.back();
                            //TODO:: go to item name Route
                          }
                        }
                      },
                    ),
                  )
                  .toList(),
            ),
          ],
        ));
  }
}
