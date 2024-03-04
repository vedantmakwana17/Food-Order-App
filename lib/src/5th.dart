import 'package:flutter/material.dart';

import '../const/const.dart';

class Five extends StatefulWidget {
  const Five({super.key});

  @override
  State<Five> createState() => _FiveState();
}

class _FiveState extends State<Five> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("FoodHub"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                        child: Image.asset(china,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "order item :-",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                width: 120,
              ),
              Card(
                color: Colors.orange,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove),
                    ),
                    Text(
                      "0",
                      style: TextStyle(fontSize: 25),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Others Items :-",
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
                      child: Container(
                        // height: 100,
                        width: 200,
                        child: Image.asset(combo,
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.fill),
                        // color: Colors.yellow,
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
                        // color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
                height: 200,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Colors.orange,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Total :- \$50 ",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: SizedBox(
                    height: 60,
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => One(),
                        // ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Add to Cart"),
                          // SizedBox(
                          //   width: 20,
                          // ),
                          Icon(Icons.shopping_cart),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
