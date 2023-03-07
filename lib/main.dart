// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_doang/pages/home.dart';
import 'package:test_doang/pages/logintrue.dart';
import 'pages/LoginScreen.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
    theme: ThemeData(brightness: Brightness.dark),
    debugShowCheckedModeBanner: false,
  ));
}
