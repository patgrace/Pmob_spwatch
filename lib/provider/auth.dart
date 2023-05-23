
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';

import '../model/user.dart';

class AuthService with ChangeNotifier{
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  User? _userFromFirebase(auth.User? user){
    if (user == null){
      return null;
    }
    return User(user.uid, user.email);
  }

  Stream<User?>? get user {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  Future<User?> signInWithEmailAndPassword(String Email, String password) async {
    final credential = await _firebaseAuth.signInWithEmailAndPassword(email: Email, password: password);

    return _userFromFirebase(credential.user);
  }

  Future<User?> createUserWithEmailAndPassword(String Email, String password) async {
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(email: Email, password: password);

    return _userFromFirebase(credential.user);
  }

  Future<void> signOut () async {
    return await _firebaseAuth.signOut();
  }
}