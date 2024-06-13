// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ticket_app/base/btm_nav_bar.dart';
import 'package:ticket_app/base/styles.dart';
import 'package:ticket_app/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Styles.bgColor,
        body: HomePage(),
        bottomNavigationBar: const BtmNavBar(),
      ),
    );
  }
}
// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       bottomNavigationBar: BtmNavBar(),
//     );
//   }
// }
