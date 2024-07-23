import 'dart:math';

import 'package:calculator/gst.dart';
import 'package:flutter/material.dart';

class calc extends StatefulWidget {
  const calc({super.key});

  @override
  State<calc> createState() => _calcState();
}

class _calcState extends State<calc> {

  TextEditingController ctrl =TextEditingController();

  String val1="",val2="",optr="";

  bool clk = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body:
        Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height:150,
                ),
                TextFormField(
                  controller: ctrl,

                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none
                  ),
                ),
                SizedBox(height: 50,),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [


                    ElevatedButton(
                        onPressed: (){
                          ctrl.text ="";
                          optr ="";
                          clk = false;
                          val2 ="";
                          val1 ="";
                          },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                          backgroundColor: Colors.greenAccent,

                        ),


                        child: Text('AC',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)
                    )
                    ),
                    ElevatedButton(onPressed: (){
                      if(clk)
                      {
                        val2+=".";
                        ctrl.text = val2;
                      }
                      else
                      {
                        val1+=".";
                        ctrl.text = val1;
                      }
                    },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                          backgroundColor: Colors.lightBlueAccent
                        ),

                        child: Text('•',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)
                        )
                    ),
                    ElevatedButton(
                        onPressed: (){
                          ctrl.text = "/";
                          optr= "/";
                          clk = true;

                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                            backgroundColor: Colors.lightBlueAccent
                        ),

                        child: Text('/',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)

                        )),
                    ElevatedButton(onPressed: (){

                      ctrl.text = "*";
                      optr= "*";
                      clk = true;
                    },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                            backgroundColor: Colors.lightBlueAccent
                        ),

                        child: Text('*',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)
                          ,)),
                  ],
                ),
                SizedBox(height: 15,),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [


                    ElevatedButton(
                        onPressed: (){

                          if(clk)
                          {
                            val2 +="7";
                            ctrl.text = val2;
                          }
                          else
                          {
                            val1 +="7";
                            ctrl.text = val1;
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                        ),

                        child: Text('7',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)
                        )),
                    ElevatedButton(onPressed: (){
                      if(clk)
                      {
                        val2 ="8";
                        ctrl.text = val2;
                      }
                      else
                      {
                        val1 ="8";
                        ctrl.text = val1;
                      }
                    },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                        ),

                        child: Text('8',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)
                        )),
                    ElevatedButton(
                        onPressed: (){
                          if(clk)
                          {
                            val2 +="9";
                            ctrl.text = val2;
                          }
                          else
                          {
                            val1 +="9";
                            ctrl.text = val1;
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                        ),

                        child: Text('9',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)
                        )),
                    ElevatedButton(onPressed: (){

                      ctrl.text = "-";
                      optr= "-";
                      clk = true;
                    },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                            backgroundColor: Colors.lightBlueAccent
                        ),

                        child: Text('-',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)
                        )),
                  ],
                ),
                SizedBox(height: 15,),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [


                    ElevatedButton(
                        onPressed: (){

                          if(clk)
                          {
                            val2 +="4";
                            ctrl.text = val2;
                          }
                          else
                          {
                            val1 +="4";
                            ctrl.text = val1;
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                        ),

                        child: Text('4',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)
                        )),
                    ElevatedButton(onPressed: (){
                      if(clk)
                      {
                        val2 +="5";
                        ctrl.text = val2;
                      }
                      else
                      {
                        val1 +="5";
                        ctrl.text = val1;
                      }
                    },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                        ),

                        child: Text('5',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)
                        )),
                    ElevatedButton(
                        onPressed: (){
                          if(clk)
                          {
                            val2 +="6";
                            ctrl.text = val2;
                          }
                          else
                          {
                            val1 +="6";
                            ctrl.text = val1;
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                        ),

                        child: Text('6',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)
                        )),
                    ElevatedButton(onPressed: (){


                      ctrl.text = "+";
                      optr= "+";
                      clk = true;
                    },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                            backgroundColor: Colors.lightBlueAccent
                        ),

                        child: Text('+',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)
                        )),
                  ],
                ),
                SizedBox(height: 15,),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [


                    ElevatedButton(
                        onPressed: (){

                          if(clk)
                          {
                            val2+="1";
                            ctrl.text = val2;
                          }
                          else
                          {
                            val1+="1";
                            ctrl.text = val1;
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                        ),

                        child: Text('1',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black))),
                    ElevatedButton(onPressed: (){
                      if(clk)
                      {
                        val2+="2";
                        ctrl.text = val2;
                      }
                      else
                      {
                        val1+="2";
                        ctrl.text = val1;
                      }
                    },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                        ),

                        child: Text('2',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)
                        )),
                    ElevatedButton(
                        onPressed: (){
                          if(clk)
                          {
                            val2+="3";
                            ctrl.text = val2;
                          }
                          else
                          {
                            val1 +="3";
                            ctrl.text = val1;
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                        ),

                        child: Text('3',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)
                        )),
                    ElevatedButton(onPressed: (){
                      ctrl.text = "√";
                      optr = "√";
                      clk =  true;


                    },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                            backgroundColor: Colors.lightBlueAccent
                        ),

                        child: Text('√',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)
                        )),
                  ],
                ),
                SizedBox(height: 15,),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [


                    ElevatedButton(
                        onPressed: (){

                          if(clk)
                          {
                            val2+="0";
                            ctrl.text = val2;
                          }
                          else
                          {
                            val1+="0";
                            ctrl.text = val1;
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                        ),

                        child: Text('0',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black))),
                    ElevatedButton(
                      onPressed: () {
                        if (clk) {
                          val2 = (double.parse(val2) / 100).toString();
                          ctrl.text = val2;
                        } else {
                          val1 = (double.parse(val1) / 100).toString();
                          ctrl.text = val1;
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(30),
                      ),
                      child: Text('%', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black)),
                    ),

                    ElevatedButton(
                        onPressed: (){
                          String currentValue = ctrl.text;
                          if (currentValue.isNotEmpty) {
                            String updatedValue = currentValue.substring(0, currentValue.length - 1);
                            ctrl.text = updatedValue;
                            if (clk) {
                              val2 = updatedValue;
                            } else {
                              val1 = updatedValue;
                            }
                          }
                        },

                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                        ),

              child: Icon(Icons.backspace_sharp, color: Colors.black),

              ),
                    ElevatedButton(onPressed: (){
                      if(optr == "+")
                      {
                        double a = double.parse(val1);
                        double b = double.parse(val2);
                        double res = a+b;

                        ctrl.text = res.toString();
                      }
                      if(optr == "-")
                      {
                        double a = double.parse(val1);
                        double b = double.parse(val2);
                        double res = a-b;

                        ctrl.text = res.toString();
                      }
                      if(optr == "/")
                      {
                        double a = double.parse(val1);
                        double b =double.parse(val2);
                        double res = a/b;

                        ctrl.text = res.toString();
                      }
                      if(optr == "*")
                      {
                        double a =double.parse(val1);
                        double b = double.parse(val2);
                        double res = a*b;

                        ctrl.text = res.toString();
                      }

                      if(optr == "√"){
                        double g = double.parse(val1);
                        num res = pow(g, (1/2));
                        ctrl.text=res.toString();
                      }
                      if(optr == "mod"){
                        double a = double.parse(val1);
                        double b = double.parse(val2);
                        double res = a - b * (a / b).floor();
                        ctrl.text = res.toString();
                      }
                      if(optr == "^") {
                        double base = double.parse(val1);
                        double exponent = double.parse(val2);
                        num result = pow(base, exponent);
                        ctrl.text = result.toString();
                      }





                    },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                            backgroundColor: Colors.lightBlueAccent
                        ),

                        child: Text('=',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)
                        )
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        ctrl.text = "^";
                        optr = "^";
                        clk =  true;
                      },
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),

                      ),
                      child: Text('^', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: (){
                        if (clk) {
                          val2 = (double.parse(val2) * -1).toString();
                          ctrl.text = val2;
                        } else {
                          val1 = (double.parse(val1) * -1).toString();
                          ctrl.text = val1;
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(30),
                      ),
                      child: Text('+/-', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black)),
                    ),
                    SizedBox(
                      width: 15,
                    ),


                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlueAccent,
                          padding: EdgeInsets.all(20)
                        ),

                        onPressed: (){
                          ctrl.text = "mod";
                          optr = "mod";
                          clk =  true;
                        }, child:Text("mod",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ],
                ),
              ],
              ),
        ),
        );
    }
}