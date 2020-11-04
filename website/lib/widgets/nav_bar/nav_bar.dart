import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/widgets/nav_bar/desktop_nav_bar.dart';
import 'package:website/widgets/nav_bar/mobile_nav_bar.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      tablet: DesktopNavBar(),
      desktop: DesktopNavBar(),
    );
  }
}