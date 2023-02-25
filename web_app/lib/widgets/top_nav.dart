import 'package:flutter/material.dart';
import 'package:web_app/helpers/responsive.dart';
import '../constants/style.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset("assets/logo/airplane.svg"),
                )
              ],
            )
          : IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
      elevation: 0,
      backgroundColor: Colors.black,
    );
