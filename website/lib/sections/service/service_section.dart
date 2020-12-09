import 'package:flutter/material.dart';
import 'package:website/components/section_title.dart';
import 'package:website/constants.dart';
import 'package:website/models/service.dart';
import 'package:website/sections/service/components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: size.width * 0.9),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "Services & Skills",
            subTitle: "My Strong Arenas",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                services.length, (index) => ServiceCard(index: index)),
          )
        ],
      ),
    );
  }
}