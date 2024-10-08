// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_widget/pages/first_page.dart';
import 'package:flutter_widget/pages/home_page.dart';
import 'package:flutter_widget/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage' :(context) => FirstPage(),
        '/homepage' :(context) => HomePage(),
        '/settingspage' :(context) => SettingsPage(),
      },
    );
  }
}

