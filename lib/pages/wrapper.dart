import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_doang/pages/home.dart';
import 'package:test_doang/pages/logintrue.dart';

import '../model/user.dart';
import '../provider/auth.dart';

class wrapper extends StatelessWidget {
  const wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final authservice = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
      stream: authservice.user,
      builder: (_, AsyncSnapshot<User?> snapshot){
        if (snapshot.connectionState == ConnectionState.active){
          final User? user = snapshot.data;
          return user == null? LoginPage() : Home();
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      });
  }
}