// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:test_doang/pages/page_satu.dart';
// import 'package:test_doang/pages/settings.dart';

// class AboutUsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("About Us"),
//       ),
//       drawer: Drawer(
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.all(20),
//               width: double.infinity,
//               height: 150,
//               color: Colors.black,
//               alignment: Alignment.bottomLeft,
//               child: Text(
//                 "SP Watch",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ListTile(
//               onTap: () {
//                 Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(
//                     builder: (context) => PageSatu(),
//                   ),
//                 );
//               },
//               leading: Icon(
//                 Icons.home,
//                 size: 35,
//               ),
//               title: Text(
//                 "Home",
//                 style: TextStyle(
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//             ListTile(
//               onTap: () {
//                 Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(
//                     builder: (context) => AboutUsPage(),
//                   ),
//                 );
//               },
//               leading: Icon(
//                 Icons.person,
//                 size: 35,
//               ),
//               title: Text(
//                 "About Us",
//                 style: TextStyle(
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//             ListTile(
//               onTap: () {
//                 Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(
//                     builder: (context) => SettingsPage(),
//                   ),
//                 );
//               },
//               leading: Icon(
//                 Icons.settings,
//                 size: 35,
//               ),
//               title: Text(
//                 "Setting",
//                 style: TextStyle(
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: Center(
//         child: Text(
//           "Shaquille Etanntyo Wibowo/082111633098, Patricia Grace Nathania/082111633033",
//           style: TextStyle(
//             fontSize: 18,
//           ),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }
// }
