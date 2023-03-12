// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test_doang/pages/review.dart';

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
                              backgroundImage:
                                  AssetImage('images/dinokuning.jpeg'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("Hi Patricia!",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w700,
                                  )),
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
                  ]),
            ),
          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: 390,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 2),
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Search Movie',
                              style: TextStyle(color: Colors.grey[300]),
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: Text(
                      'Action',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      
                    ),
                  ),
                  InkWell(
                    onTap: () {
                    Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Review()));
                  },
                    child: MovieReview(
                      Img: 'images/peninsula.png',
                      Judul: 'Penisula',
                      Sinopsis:
                          'Setelah pandemi global menghancurkan peradaban, seorang penyintas yang tangguh mengambil alih seorang gadis berusia 14 tahun yang mungkin menjadi harapan terakhir umat manusia.',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                    Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Review()));
                  },
                    child: MovieReview(
                        Img: 'images/residentevil.png',
                        Judul: 'Resident evil',
                        Sinopsis:
                            'Ditetapkan pada tahun 1998, kisah asal ini mengeksplorasi rahasia Spencer Mansion yang misterius dan Kota Raccoon yang naas.'),
                  ),
                  InkWell(
                    onTap: () {
                    Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Review()));
                  },
                    child: MovieReview(
                        Img: 'images/topgunmaverick.png',
                        Judul: 'Top Gun Maverick',
                        Sinopsis:
                            'Setelah tiga puluh tahun, Maverick masih mendorong amplop sebagai penerbang angkatan laut top, tetapi harus menghadapi hantu masa lalunya ketika dia memimpin lulusan elit TOP GUN dalam misi yang menuntut pengorbanan tertinggi dari mereka yang dipilih untuk menerbangkannya.'),
                  ),
                  InkWell(
                    onTap: () {
                    Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Review()));
                  },
                    child: MovieReview(
                        Img: 'images/thelastofus.png',
                        Judul: 'The Last Of Us',
                        Sinopsis:
                            'Setelah pandemi global menghancurkan peradaban, seorang penyintas yang tangguh mengambil alih seorang gadis berusia 14 tahun yang mungkin menjadi harapan terakhir umat manusia.'),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class MovieReview extends StatelessWidget {
  final String Img;
  final String Judul;
  final String Sinopsis;
  MovieReview({required this.Img, required this.Judul, required this.Sinopsis});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          height: 190,
          width: 370,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 209, 233, 245),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 10, left: 20, top: 20, bottom: 20),
              child: Image.asset(
                Img,
                fit: BoxFit.contain,
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
                    child: Text(Judul,
                        style:
                            TextStyle(color: Color.fromARGB(146, 40, 40, 232)),
                        textAlign: TextAlign.center),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 10),
                  child: Container(
                    width: 190,
                    height: 100,
                    child: Text(Sinopsis,
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
          ]),
        ));
  }
}
