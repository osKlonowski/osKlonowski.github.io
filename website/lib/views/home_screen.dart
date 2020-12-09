import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:website/sections/about/about_section.dart';
import 'package:website/sections/contact/contact_section.dart';
import 'package:website/sections/feedback/feedback_section.dart';
import 'package:website/sections/recent_work/recent_word_section.dart';
import 'package:website/sections/service/service_section.dart';
import 'package:website/sections/topSection/top_section.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> widgets;
  final ScrollController mainScrollController = ScrollController();
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  void initState() {
    setState(() {
      widgets = [
        TopSection(
          itemScrollController: itemScrollController,
        ),
        AboutSection(),
        ServiceSection(),
        RecentWorkSection(),
        FeedbackSection(),
        ContactSection(),
      ];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollablePositionedList.builder(
        itemCount: widgets.length,
        itemBuilder: (context, index) => widgets[index],
        itemScrollController: itemScrollController,
        itemPositionsListener: itemPositionsListener,
      ),
      // body: SingleChildScrollView(
      //   controller: mainScrollController,
      //   child: Column(
      //     children: [
      // TopSection(key: homeKey),
      // SizedBox(height: kDefaultPadding * 2),
      // AboutSection(key: aboutKey),
      // ServiceSection(),
      // RecentWorkSection(),
      // FeedbackSection(),
      // SizedBox(height: kDefaultPadding),
      // ContactSection(),
      //     ],
      //   ),
      // ),
    );
  }
}
