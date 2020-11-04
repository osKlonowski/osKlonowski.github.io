import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:website/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'Oskar Klonowski',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // textTheme: GoogleFonts.ralewayTextTheme(
          //   Theme.of(context).textTheme,
          // ),
          ),
      home: HomePage(),
    );
  }
}
