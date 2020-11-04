import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: Icon(Icons.menu, size: 24, color: Colors.black54),
          ),
          _text('Oskar Klonowski'),
        ],
      ),
    );
  }

  Widget _text(String text) {
    return Text(
      text,
      style: GoogleFonts.raleway().copyWith(
        color: Colors.black54,
      ),
    );
  }
}
