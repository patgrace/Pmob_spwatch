// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_doang/pages/about_us.dart';
import 'package:test_doang/pages/home.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.person,
              text: 'Profile',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              }),
          _drawerItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              }),
          _drawerItem(
              icon: Icons.info_outline,
              text: 'About Us',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUsPage()));
              }),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
        image: AssetImage('images/dinokuning.jpeg'),
        fit: BoxFit.fill,
      ),
    ),
    otherAccountsPictures: const [
      ClipOval(
        child: Image(image: AssetImage('images/dino2.jpeg'), fit: BoxFit.cover),
      ),
      ClipOval(
        child: Image(image: AssetImage('images/dino3.jpeg'), fit: BoxFit.cover),
      )
    ],
    accountName: Text('Patgrace'),
    accountEmail: Text('user@gmail.com'),
    decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
  );
}

Widget _drawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
