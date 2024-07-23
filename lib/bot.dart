import 'package:flutter/material.dart';
import 'package:calculator/bmi.dart';
import 'package:calculator/calc.dart';
import 'package:calculator/gst.dart';


class bot extends StatefulWidget {
  @override
  _botState createState() => _botState();
}

class _botState extends State<bot> {
  int index = 0;
  List pages = [
    calc(),
    bmi(),
    gst(),
  ];
  void tap(indexs){
    setState(() {
      index = indexs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.calculate_sharp),label: "CALC"),
        BottomNavigationBarItem(icon: Icon(Icons.monitor_weight_rounded),label: "BMI"),
        BottomNavigationBarItem(icon: Icon(Icons.gpp_good_sharp),label: "GST"),

      ],
        currentIndex: index,
        onTap: tap,
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Page One'),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Page Two'),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Page Three'),
      ),
    );
  }
}
