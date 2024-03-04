// import 'package:demo/src/instagram/Task%20home.dart';
// import 'package:demo/src/instagram/Task_4.dart';
// import 'package:demo/src/instagram/task3.dart';
import 'package:flutter/material.dart';
import 'package:zomato/src/2nd.dart';
import 'package:zomato/src/4th.dart';

import '3rd.dart';

class One extends StatefulWidget {
  const One({super.key});

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  int _selectedIndex = 0;
  int _shoppingcout = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Two(),
    Three(),
    Four(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("Food Hub"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            // iconSize: 30,
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            // iconSize: 30,
            icon: Icon(Icons.add_shopping_cart),
          ),
        ],
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'category',
            backgroundColor: Colors.green.shade900,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Account',
            backgroundColor: Colors.deepOrange.shade800,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow,
        onTap: _onItemTapped,
      ),
    );
  }
}
