import 'package:flutter/material.dart';
import 'package:web_app/helpers/responsive.dart';
import 'package:web_app/widgets/large_screen.dart';
import 'package:web_app/widgets/small_screen.dart';
import 'package:web_app/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
