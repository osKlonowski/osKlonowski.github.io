import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue[300],
      child: Center(
        child: Text(
          'Welcome.\nThis website was recently upgraded to Flutter Web\nIt is still under development.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}
