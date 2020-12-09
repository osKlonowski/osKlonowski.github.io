import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
          child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
            constraints: BoxConstraints(
              maxWidth: size.width * 0.9,
              maxHeight: size.height * 0.65,
            ),
            width: double.infinity,
            color: Colors.white.withOpacity(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Hi There!".text.white.size(20).capitalize.make(),
                "Oskar\nKlonowski".text.size(85).bold.white.make(),
                "Co-Founder of TUNED BKT & Software Developer".text.size(35).white.make(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
