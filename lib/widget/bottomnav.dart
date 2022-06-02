import 'package:AnimalPedia/screen/homepage.dart';
import 'package:AnimalPedia/screen/profilepage.dart';
import 'package:AnimalPedia/screen/wallpaperpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final tabs = [
    homePage(),
    WallpaperPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 0,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.menu,
        //     color: Colors.black,
        //   ),
        // ),
        backgroundColor: Color(0xFFFAFAFA),
        centerTitle: true,
        title: Text(
          "AnimalPedia",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 25,
        //type: BottomNavigationBarType.shifting,
        // backgroundColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallpaper),
            title: Text('Wallpaper'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
            backgroundColor: Colors.red,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
