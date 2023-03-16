// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Cate1 extends StatelessWidget {
  const Cate1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.black,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(""),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Hi Patricia!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Center(
                  child: Container(
                    color: Colors.white,
                    height: 50,
                    width: 370,
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        Text("Search"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Text(
                    'akshfskajfhd',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 190,
                    width: 370,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 209, 233, 245),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 10, left: 20, top: 20, bottom: 20),
                          child: Image.asset(
                            'images/peninsula.png',
                            width: 120,
                            height: 200,
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0, top: 20),
                              child: Container(
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 155, 203, 243),
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Text('The Last Of Us',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(146, 40, 40, 232)),
                                    textAlign: TextAlign.center),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, right: 10),
                              child: SizedBox(
                                width: 190,
                                height: 100,
                                child: Text(
                                    'Setelah pandemi global menghancurkan peradaban, seorang penyintas yang tangguh mengambil alih seorang gadis berusia 14 tahun yang mungkin menjadi harapan terakhir umat manusia.',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: "roboto"),
                                    textAlign: TextAlign.justify),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Icon(
                                Icons.favorite_border_sharp,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
