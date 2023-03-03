// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test_doang/drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 150, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 20,
              ),
              Text("halo Patrica!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
      drawer: DrawerSide(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 40,
            width: 390,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 2),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Search product',
                      style: TextStyle(color: Colors.grey[300]),
                    )
                  ],
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20, top: 10),
          ),
          Stack(
            children: [
              Image.asset(
                'images/wakanda.jpg',
                fit: BoxFit.fill,
                colorBlendMode: BlendMode.hue,
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, bottom: 10, top: 25),
                    child: Text(
                      'Welcome to SPWatch',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text('Discover your next favorite film.',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  )
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20, top: 20),
            child: Text("Categories",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.grey),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Romance',
                          style: TextStyle(fontSize: 18),
                        ),
                        Image.asset(
                          'images/romance.jpg',
                          width: 35,
                          height: 35,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.grey),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Horror',
                          style: TextStyle(fontSize: 18),
                        ),
                        Image.asset(
                          'images/horror.jpg',
                          width: 35,
                          height: 35,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.grey),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Action',
                          style: TextStyle(fontSize: 18),
                        ),
                        Image.asset(
                          'images/action.jpg',
                          width: 35,
                          height: 35,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.grey),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Animation',
                          style: TextStyle(fontSize: 18),
                        ),
                        Image.asset(
                          'images/animation.jpg',
                          width: 35,
                          height: 35,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.blueGrey),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Comedy',
                          style: TextStyle(fontSize: 18),
                        ),
                        Image.asset(
                          'images/comedy.jpg',
                          width: 35,
                          height: 35,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, top: 10),
            child: Text("Trending",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
          ),
          Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
              'images/foto_kucing.jpg',
              fit: BoxFit.fill,
            ),
          )
        ]),
      ),
    );
  }
}
