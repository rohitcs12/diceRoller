import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = new AssetImage("images/one.png");
  AssetImage two = new AssetImage("images/two.png");
  AssetImage three = new AssetImage("images/three.png");
  AssetImage four = new AssetImage("images/four.png");
  AssetImage five = new AssetImage("images/five.png");
  AssetImage six = new AssetImage("images/six.png");
  AssetImage setimage;
  void initState() {
    super.initState();
    setState(() {
      setimage = two;
    });
  }

  void diceroll() {
    var num = (1 + Random().nextInt(6));
    AssetImage val;
    int count = 0;
    switch (num) {
      case 1:
        val = one;
        break;
      case 2:
        val = two;
        break;
      case 3:
        val = three;
        break;
      case 4:
        val = four;
        break;
      case 5:
        val = five;
        break;
      case 6:
        val = six;
        break;
    }
    setState(() {
      setimage = val;
    });
  }

  //final GestureDetector;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Image(
                image: setimage,
                width: 100.00,
                height: 100.00,
              ),
              onTap: () => diceroll(),
            ),
            Container(
              margin: EdgeInsets.only(top: 100.00, left: 50.00),
              child: RaisedButton(
                child: Text("Dice Roll"),
                onPressed: () => diceroll(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
