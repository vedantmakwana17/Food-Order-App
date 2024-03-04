import 'package:flutter/material.dart';
import 'package:zomato/src/5th.dart';

import '../const/const.dart';

class Two extends StatefulWidget {
  const Two({super.key});

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "What would your like to eat?",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            // height: 100,
                            width: 400,
                            child: Image.asset(combo,
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.fill),
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                    height: 300,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Over popular items",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: InkWell(
                            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Five(),
                            )),
                            child: Container(
                              // height: 100,
                              width: 200,
                              child: Image.asset(china,
                                  height: double.infinity,
                                  width: double.infinity,
                                  fit: BoxFit.fill),
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            // height: 100,
                            width: 200,
                            child: Image.asset(south,
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.fill),
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                    height: 200,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Discount Items",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 500,
                child: GridView.count(
                  crossAxisSpacing: 14,
                  padding: EdgeInsets.all(10),
                  mainAxisSpacing: 14,
                  crossAxisCount: 2,
                  children: [
                    Container(
                      child: Image.asset(pasta,
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.fill),
                      color: Colors.blue[100],
                    ),
                    Container(
                      child: Image.asset(ice,
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.fill),
                      color: Colors.blue[100],
                    ),
                    Container(
                      child: Image.asset(pizza,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
