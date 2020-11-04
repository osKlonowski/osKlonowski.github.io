import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _text("Oskar Klonowski"),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _text('About'),
              SizedBox(
                width: 50,
              ),
              _text('Contact'),
            ],
          )
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
