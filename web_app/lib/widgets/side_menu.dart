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
            ExpansionTile(
              title: CustomText(text: "Concepts"),
              children: [
                ListTile(
                  title: CustomText(text: "Fluids"),
                  onTap: () {},
                ),
              ],
            )
          ],
        ));
  }
}
