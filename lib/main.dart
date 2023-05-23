// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_doang/pages/logintrue.dart';
import 'package:test_doang/pages/signup.dart';
import 'package:test_doang/pages/wrapper.dart';
import 'package:test_doang/provider/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider(
    create: (context) => AuthService(),
    child: MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => wrapper(),
        '/Login': (context) => LoginPage(),
        '/Register': (context) => SignUp(),
      },
    ),
  ));
}
