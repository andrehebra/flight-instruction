import 'package:flutter/material.dart';
import 'package:web_app/helpers/responsive.dart';
import 'package:web_app/widgets/large_screen.dart';
import 'package:web_app/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
