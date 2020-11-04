import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/widgets/centered_view.dart';
import 'package:website/widgets/home_content.dart';
import 'package:website/widgets/nav_bar/mobile_drawer.dart';
import 'package:website/widgets/nav_bar/nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          drawer: size.deviceScreenType == DeviceScreenType.mobile
              ? MobileDrawer()
              : null,
          body: CenteredView(
            child: Column(
              children: [
                NavigationBar(),
                Expanded(
                  child: HomeContent(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
