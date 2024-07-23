import 'package:calculator/bmi.dart';
import 'package:calculator/calc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class gst extends StatefulWidget {
  const gst({super.key});

  @override
  State<gst> createState() => _gstState();
}

class _gstState extends State<gst> {

  TextEditingController price = TextEditingController();
  TextEditingController gst = TextEditingController();
  TextEditingController originalprice = TextEditingController();
  TextEditingController gstamount = TextEditingController();
  TextEditingController inclusive = TextEditingController();
  TextEditingController exclusive = TextEditingController();

  void  calculateGST(){
    double priceValue = double.tryParse(price.text)?? 0.0 ;
    double gstRate = double.tryParse(gst.text) ?? 0.0;

    double gstAmount = (priceValue * gstRate) / 100;

    double exclusivePrice = priceValue + gstAmount;

    double originalPrice = priceValue/(1+gstRate/100);

    double inclusivePrice = priceValue - originalPrice;


    gstamount.text = gstAmount.toStringAsFixed(2);
    exclusive.text = exclusivePrice.toStringAsFixed(2);
    inclusive.text = inclusivePrice.toStringAsFixed(2);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
        body: Center(
          child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("Price", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                ),
                TextFormField(
                  controller: price,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))
                  ),
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("GST%", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                ),
                TextFormField(
                  controller: gst,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))
                  ),
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("GST Amount", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                ),
                TextFormField(
                  controller: gstamount,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))
                  ),
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Inclusive GST", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                ),
                TextFormField(
                  controller: inclusive,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))
                  ),
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Exclusive GST", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                ),
                TextFormField(
                  controller: exclusive,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))
                  ),
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(onPressed: () {
                  calculateGST();
                },
                    child: Text("Calculate", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),)),
              ],
            ),
          ),
                ),
        )
    );
  }
}
