import 'package:flutter/material.dart';

class User with ChangeNotifier{
  final String uid;
  final String? email;
  User(this.uid, this.email);
}