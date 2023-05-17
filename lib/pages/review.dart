import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/dinokuning.jpeg'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
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
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
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
        children: [
          Column(
            children: [
              const Center(
                child: Text(
                  'The Last of Us',
                  style: TextStyle(
                    color: Color(0xff87CEFA),
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 150, top: 10),
                    child: SizedBox(
                      width: 100,
                      height: 150,
                      child: Image.asset(
                        'images/peninsula.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 140, left: 100),
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        'images/love.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 100,
                  width: 370,
                  child: Text(
                    'Setelah pandemi global menghancurkan peradaban, seorang penyintas yang tangguh mengambil alih seorang gadis berusia 14 tahun yang mungkin menjadi harapan terakhir umat manusia.',
                    style: TextStyle(
                      color: Color(0xff87CEFA),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset('images/dino2.jpeg'),
                title: const Text('Patricia'),
                subtitle: TextFormField(
                  cursorColor: Colors.grey,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    labelText: "Type review here..",
                    labelStyle: TextStyle(color: Colors.grey),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset('images/dino2.jpeg'),
                title: const Text('Ammar'),
                subtitle: const Text(
                    'Film nya sangat bagus bikin deg-deg an recommended banget pokoknya deh '),
                trailing: Image.asset('images/love.png'),
              ),
              ListTile(
                leading: Image.asset('images/dino2.jpeg'),
                title: const Text('Ammar'),
                subtitle: const Text(
                    'Film nya sangat bagus bikin deg-deg an recommended banget pokoknya deh '),
                trailing: Image.asset('images/love.png'),
              ),
              ListTile(
                leading: Image.asset('images/dino2.jpeg'),
                title: const Text('Ammar'),
                subtitle: const Text(
                    'Film nya sangat bagus bikin deg-deg an recommended banget pokoknya deh '),
                trailing: Image.asset('images/love.png'),
              ),
              ListTile(
                leading: Image.asset('images/dino2.jpeg'),
                title: const Text('Ammar'),
                subtitle: const Text(
                    'Film nya sangat bagus bikin deg-deg an recommended banget pokoknya deh '),
                trailing: Image.asset('images/love.png'),
              ),
              ListTile(
                leading: Image.asset('images/dino2.jpeg'),
                title: const Text('Ammar'),
                subtitle: const Text(
                    'Film nya sangat bagus bikin deg-deg an recommended banget pokoknya deh '),
                trailing: Image.asset('images/love.png'),
              ),
              ListTile(
                leading: Image.asset('images/dino2.jpeg'),
                title: const Text('Ammar'),
                subtitle: const Text(
                    'Film nya sangat bagus bikin deg-deg an recommended banget pokoknya deh '),
                trailing: Image.asset('images/love.png'),
              ),
              ListTile(
                leading: Image.asset('images/dino2.jpeg'),
                title: const Text('Ammar'),
                subtitle: const Text(
                    'Film nya sangat bagus bikin deg-deg an recommended banget pokoknya deh '),
                trailing: Image.asset('images/love.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
