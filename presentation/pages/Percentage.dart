

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class contain_percent extends StatefulWidget {
  contain_percent({Key? key}) : super(key: key);

  @override
  State<contain_percent> createState() => _contain_percentState();
}

class _contain_percentState extends State<contain_percent> with TickerProviderStateMixin{
  double percent = 0.8;
  var percent_status = 0.8 * 100.0;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
                          height: size.height,
                          width: size.width,
                          child: Stack(
                            children: [
                              Positioned(
                                  child: Row(
                                children: [
                                  Text('Meal',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 18)),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Image.asset(
                                      'assets/images/nutrition_board.png',
                                      fit: BoxFit.fitHeight)
                                ],
                              )),
                              Positioned(
                                  top: 32,
                                  right: 1,
                                  child: Center(
                                    child: LinearPercentIndicator(
                                      width: 190,
                                      animation: true,
                                      animationDuration: 5000,
                                      lineHeight: 30,
                                      center: Text(
                                        "$percent_status%",
                                        style: new TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white),
                                      ),
                                      percent: percent,
                                      barRadius: Radius.circular(30),
                                      progressColor:
                                          Color.fromARGB(255, 32, 165, 236),
                                      backgroundColor:
                                          Color.fromARGB(255, 32, 200, 230),
                                    ),
                                  )),
                              Positioned(
                                top: 73,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.blue),
                                      child: Center(
                                          child: Text(
                                        'Healthy Food',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      )),
                                    ),
                                    SizedBox(
                                      width: 1,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Color.fromARGB(
                                              255, 32, 165, 236)),
                                      child: Center(
                                          child: Text(
                                        'Junk Food',
                                        style: TextStyle(fontSize: 15),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
  }
}