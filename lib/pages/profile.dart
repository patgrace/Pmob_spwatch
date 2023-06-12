import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Edit Profile',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            const CircleAvatar(
              radius: 30,
              foregroundImage: AssetImage("images/dinokuning.jpeg"),
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
              ),
              height: 60,
              width: 300,
              child: const TextField(
                keyboardType: TextInputType.emailAddress,
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
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 60,
                width: 300,
                child: const TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black38,
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.black38),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                      color: const Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Center(
                    child: Text(
                      'Save Edit',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
