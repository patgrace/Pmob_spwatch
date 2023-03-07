// // ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, non_constant_identifier_names

// import 'dart:js';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:test_doang/pages/home.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// Widget buildUsername() {
//   return Center(
//       child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       const Text(
//         'Usernam',
//         style: TextStyle(
//             color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
//       ),
//       const SizedBox(
//         height: 10,
//         width: 50,
//       ),
//       Container(
//         alignment: Alignment.centerLeft,
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10),
//             boxShadow: [
//               const BoxShadow(
//                   color: Colors.black, blurRadius: 6, offset: Offset(0, 2))
//             ]),
//         height: 60,
//         width: 400,
//         child: const TextField(
//           keyboardType: TextInputType.emailAddress,
//           style: TextStyle(color: Colors.black87),
//           decoration: InputDecoration(
//               border: InputBorder.none,
//               contentPadding: EdgeInsets.only(top: 14),
//               prefixIcon: Icon(
//                 Icons.person,
//                 color: Colors.black38,
//               ),
//               hintText: 'Username',
//               hintStyle: TextStyle(color: Colors.black38)),
//         ),
//       )
//     ],
//   ));
// }

// Widget buildPassword() {
//   return Center(
//       child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       const Text(
//         'Password',
//         style: TextStyle(
//             color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
//       ),
//       const SizedBox(
//         height: 10,
//         width: 50,
//       ),
//       Container(
//         alignment: Alignment.centerLeft,
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10),
//             boxShadow: [
//               const BoxShadow(
//                   color: Colors.black, blurRadius: 6, offset: Offset(0, 2))
//             ]),
//         height: 60,
//         width: 400,
//         child: const TextField(
//           obscureText: true,
//           style: TextStyle(color: Colors.black87),
//           decoration: InputDecoration(
//               border: InputBorder.none,
//               contentPadding: EdgeInsets.only(top: 14),
//               prefixIcon: Icon(
//                 Icons.person,
//                 color: Colors.black38,
//               ),
//               hintText: 'Password',
//               hintStyle: TextStyle(color: Colors.black38)),
//         ),
//       )
//     ],
//   ));
// }

// Widget ElevatedButton() {
//   return InkWell(
//     onTap: () => Navigator.push(context as BuildContext,
//         MaterialPageRoute(builder: (context) => const Home())),
//     child: Ink(
//       padding: const EdgeInsets.symmetric(vertical: 12),
//       width: 350,
//       decoration: BoxDecoration(
//           color: Colors.amber, borderRadius: BorderRadius.circular(10)),
//       child: const Text(
//         "Login",
//         style: TextStyle(
//             color: Color.fromARGB(255, 3, 178, 58),
//             fontWeight: FontWeight.bold,
//             fontSize: 20),
//         textAlign: TextAlign.center,
//       ),
//     ),
//   );
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: AnnotatedRegion<SystemUiOverlayStyle>(
//         value: SystemUiOverlayStyle.light,
//         child: GestureDetector(
//           child: Stack(
//             children: <Widget>[
//               Container(
//                 height: double.infinity,
//                 width: double.infinity,
//                 child: SingleChildScrollView(
//                   physics: const AlwaysScrollableScrollPhysics(),
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 25, vertical: 120),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       const Text(
//                         'SP WATCH',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 40,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(height: 50),
//                       buildUsername(),
//                       buildPassword(),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
