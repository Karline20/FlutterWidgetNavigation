// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_widget/pages/home_page.dart';
import 'package:flutter_widget/pages/profile_page.dart';
import 'package:flutter_widget/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();  
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    //homepage
    HomePage(),
    //profile page
    ProfilePage(),
    //setting page
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1ST Page"),
      ),
      body: _pages[_selectedIndex],
      // drawer: Drawer(
      //   backgroundColor: Colors.deepPurple[100],
      //   child: Column(
      //     children: [
      //       DrawerHeader(
      //         child: Icon(
      //         Icons.favorite,
      //         size: 48,
      //         ),
      //       ),
      //       // home page list tile
      //       ListTile(
      //         leading: Icon(Icons.home), 
      //         title: Text("H O M E"),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/homepage');
      //         },
      //       ),
      //       // setting page list tile
      //       ListTile(
      //         leading: Icon(Icons.settings), 
      //         title: Text("S E T T I N G S"),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/settingspage');
      //         },
      //       ),
      //     ],
      //   ),
      //  ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),

          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Profile',
            ),

          ///settings
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Settings',
            ),

        ]
        ),
    );
  }
}