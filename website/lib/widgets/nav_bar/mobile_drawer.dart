import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)],
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('About', Icons.help),
          DrawerItem('Contact', Icons.contact_phone),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(
            width: 30,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.black,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Oskar',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Text(
            'Klonowski',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
