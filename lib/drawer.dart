// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
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
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
        image: AssetImage('images/action.jpg'),
        fit: BoxFit.fill,
      ),
    ),
    otherAccountsPictures: const [
      ClipOval(
        child: Image(image: AssetImage('images/action.jpg'), fit: BoxFit.cover),
      ),
      ClipOval(
        child: Image(image: AssetImage('images/action.jpg'), fit: BoxFit.cover),
      )
    ],
    accountName: Text('User'),
    accountEmail: Text('user@gmail.com'),
    decoration: BoxDecoration(color: Color.fromARGB(255, 3, 178, 58)),
  );
}

Widget _drawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
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
