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
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          elevation: 0,
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 20, top: 10),
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                      Container(
                        width: 300,
                        height: 200,
                        child: Text(
                          'SPWatch is a mobile application designed for movie enthusiasts who want to stay up-to-date with the latest movies and read reviews from other users. The app allows users to search for movies, view information about each film (such as the plot summary, cast and crew, and release date), and read and write reviews.',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Text(
                          "develope by :\nPatricia Grace Nathania/082111633033\nShaquille Etanntyo Wibowo/082111633098",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey))
                    ])),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ]));
  }
}
