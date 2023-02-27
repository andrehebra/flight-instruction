import 'package:flutter/material.dart';
import 'package:web_app/helpers/responsive.dart';
import 'package:web_app/widgets/large_screen.dart';
import 'package:web_app/widgets/side_menu.dart';
import 'package:web_app/widgets/small_screen.dart';
import 'package:web_app/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
