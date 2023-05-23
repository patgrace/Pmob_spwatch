import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_doang/pages/logintrue.dart';

import '../provider/auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


 
  @override
  Widget build(BuildContext context) {
    final authservice = Provider.of<AuthService>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 120),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'SPWatch',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Image.asset('images/user.png'),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Email',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
                width: 50,
              ),
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                height: 60,
                width: 300,
                child:  TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black38,
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.black38),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Username',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
                width: 50,
              ),
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                height: 60,
                width: 300,
                child:  TextField(
                  controller: usernameController,
                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black38,
                    ),
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Colors.black38),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Password',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
                width: 50,
              ),
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                height: 60,
                width: 300,
                child:  TextField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black38,
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.black38),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await authservice.createUserWithEmailAndPassword(emailController.text, passwordController.text);
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> LoginPage()));
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
