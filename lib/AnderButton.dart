import 'package:flutter/material.dart';
import 'package:flutter_app/FirstPage.dart';
import 'package:flutter_app/SecondPage.dart';



class AnderButton extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _AnderButton();
  }
}

class _AnderButton extends State<AnderButton> {

  int _currentIndex = 0;
  final _pageWidgets = [
    FirstPage(),
    SecondPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter CRUD APP'),
      ),
      body: _pageWidgets.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
             ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_album),
         ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_album),
              ),
        ],
        currentIndex: _currentIndex,
        fixedColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
  void _onItemTapped(int index) => setState(() => _currentIndex = index);
}



