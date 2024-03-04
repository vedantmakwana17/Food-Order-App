import 'package:flutter/material.dart';
import 'package:zomato/src/5th.dart';

import '../const/const.dart';

class Three extends StatefulWidget {
  const Three({super.key});

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.count(
        crossAxisSpacing: 14,
        // physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(10),
        mainAxisSpacing: 14,
        crossAxisCount: 2,
        children: [
          Container(
            child: Image.asset(pizza,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill),
            color: Colors.blue[100],
          ),
          Container(
            child: Image.asset(sandwich,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill),
            color: Colors.black,
          ),
          Container(
            child: Image.asset(burger,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill),
            color: Colors.blue[100],
          ),
          Container(
            child: Image.asset(coke,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill),
            color: Colors.blue[100],
          ),
          Container(
            child: Image.asset(fries,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill),
            color: Colors.blue[100],
          ),
          Container(
            child: Image.asset(coffee,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill),
            color: Colors.blue[100],
          ),
          Container(
            child: Image.asset(cake,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill),
            color: Colors.blue[100],
          ),
          Container(
            child: Image.asset(chips,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill),
            color: Colors.blue[100],
          ),
        ],
      ),
    );
  }
}
