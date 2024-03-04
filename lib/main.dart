import 'package:flutter/material.dart';
import 'package:zomato/src/4th.dart';
import 'const/const.dart';
import 'src/1st.dart';
import 'src/5th.dart';

void main() {
  runApp(
    MaterialApp(
      home: Myapp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("FoodHub"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(boy,
              height: 500, width: double.infinity, fit: BoxFit.fill),
          SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Text(
                "Order And  Enjoy your food",
                style: TextStyle(fontSize: 27),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Order food and get delivery within a ",
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "few minutes to your door ",
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(45),
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => One(),
                      ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Get Started"),
                        // SizedBox(
                        //   width: 20,
                        // ),
                        Icon(Icons.play_arrow),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Colors.deepPurple,
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
