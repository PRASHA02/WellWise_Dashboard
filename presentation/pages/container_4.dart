 

 import 'package:flutter/material.dart';

import 'radialChart.dart';

class container_fourth extends StatefulWidget {
   container_fourth({Key? key}) : super(key: key);
 
   @override
   State<container_fourth> createState() => _container_fourthState();
 }
 
 class _container_fourthState extends State<container_fourth> with TickerProviderStateMixin{
   @override
   Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     return Positioned(
                    top: size.height / 1.35,
                    left: size.width / 2.5,
                    child: Container(
                        height: size.height * 0.16,
                        width: size.width * 0.53,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(242, 242, 241, 0.966),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 50,
                                  spreadRadius: 10,
                                  color: Color.fromARGB(255, 140, 233, 249),
                                  offset: Offset(0, 10))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            height: size.height,
                            width: size.width,
                            child: Stack(
                              children: [
                                Positioned(
                                    right: -10, top: -85, child: RadialBar()),
                                Positioned(
                                    top: 20,
                                    left: 125,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: size.height * 0.02,
                                          width: size.width * 0.04,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromARGB(
                                                  255, 32, 214, 26)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          'Sleep',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )),
                                Positioned(
                                    top: 40,
                                    left: 150,
                                    child: Text(
                                      '7h 30m',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    )),
                                Positioned(
                                    top: 60,
                                    left: 125,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: size.height * 0.02,
                                          width: size.width * 0.04,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromARGB(
                                                  255, 238, 162, 22)),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Excercise',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )),
                                Positioned(
                                    top: 78,
                                    left: 150,
                                    child: Text(
                                      '7h 30m',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    )),
                                Positioned(
                                    top: 100,
                                    left: 125,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: size.height * 0.02,
                                          width: size.width * 0.04,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromARGB(
                                                  255, 12, 102, 220)),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Steps',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        )));
   }
 }