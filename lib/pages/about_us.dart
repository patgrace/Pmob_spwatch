// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:test_doang/drawer.dart';
import 'package:test_doang/pages/home.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: DrawerSide(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.blue, size: 30),
          toolbarHeight: 75,
          title: const Text(
            'About Us',
            style: TextStyle(
                color: Colors.blue,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 20, top: 10),
                child: Center(
                  child: Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text(
                      "SP Watch",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
            leading: Icon(
              Icons.home,
              size: 35,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => AboutUsPage(),
                ),
              );
            },
            leading: Icon(
              Icons.person,
              size: 35,
            ),
            title: Text(
              "About Us",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
            leading: Icon(
              Icons.settings,
              size: 35,
            ),
            title: Text(
              "Setting",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ]));
  }
}
