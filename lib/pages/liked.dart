// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Liked extends StatelessWidget {
  const Liked({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        appBar: AppBar(
      iconTheme: const IconThemeData(color: Colors.blue, size: 30),
      toolbarHeight: 75,
      title: const Text(
        'Liked',
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 25),
      ),
      elevation: 0,
      backgroundColor: Colors.black,
      centerTitle: true,
    ));
  }
}
