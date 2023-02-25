import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;

  const ResponsiveWidget({
    super.key,
    required this.largeScreen,
    required this.smallScreen,
  });

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;
  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;
  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < smallScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        if (width >= largeScreenSize) {
          return largeScreen;
        } else if (width < largeScreenSize && width >= mediumScreenSize) {
          return largeScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}
