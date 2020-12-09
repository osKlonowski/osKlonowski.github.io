import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxWidth: size.width,
        maxHeight: size.height,
      ),
      child: Image.asset(
        "assets/images/person.png",
        fit: BoxFit.contain,
        filterQuality: FilterQuality.high,
        width: size.width * 0.5,
      ),
    );
  }
}
