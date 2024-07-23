import 'package:flutter/material.dart';

import 'calc.dart';

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {

  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController ctrl = TextEditingController();
  void calculateBMI() {
    final double height = double.parse(heightController.text) /100;
    final double weight = double.parse(weightController.text);

    final double bmi = weight / (height * height);
    ctrl.text = bmi.toStringAsFixed(2);

    String category;
    Color color;

    if (bmi < 18.5) {
      category = "Underweight 😢";
      color = Colors.yellow;
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      category = "Normal weight 😍";
      color = Colors.green;
    } else {
      category = "Overweight 😲";
      color = Colors.red;
    }

    showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            height: 100,
            color: color,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                    'You are $category',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    child: const Text('Close'),
                    onPressed: () => Navigator.pop(context),
                  )
                ],
              ),
            ),
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Column(
                  children: [
                    Text("Your Height", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    ),
                    Text("in cm", style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      textAlign: TextAlign.center,
                      controller: heightController,
                      style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                          )
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 15,),
                Text('Your Weight',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black),),
                Text('in Kg',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),),
                      SizedBox(height: 20,),
                      TextFormField(
                        textAlign: TextAlign.center,
                        controller: weightController,
                        style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )
                        ),
                      ),
                  SizedBox(height: 15,),
                  Text('Your BMI',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black),),
                  SizedBox(height: 20,),
                  TextFormField(
            textAlign: TextAlign.center,
            controller: ctrl,
            style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),

            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),

            ),
                  ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    calculateBMI();
                  },
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent // Change this to the desired color
                  ),
                )


              ],
                ),
          ),
        ),
      ),
    );
  }
}
