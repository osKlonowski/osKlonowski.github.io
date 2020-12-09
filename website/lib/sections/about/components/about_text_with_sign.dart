import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: "About \nmy story".text.size(50).semiBold.make(),
    );
  }
}