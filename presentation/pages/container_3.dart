import 'package:flutter/material.dart';

class contaner_Third extends StatefulWidget {
  contaner_Third({Key? key}) : super(key: key);

  @override
  State<contaner_Third> createState() => _contaner_ThirdState();
}

class _contaner_ThirdState extends State<contaner_Third> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
                  top: size.height / 1.28,
                  left: 20,
                  child: Row(
                    children: [
                      Container(
                          height: size.height * 0.12,
                          width: size.width * 0.3,
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
                            padding: const EdgeInsets.all(10.0),
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    Text('Activeness',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 15)),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset('assets/images/yoga.png',
                                        fit: BoxFit.cover),
                                  ],
                                ),
                                Positioned(
                                  top: 40,
                                  child: Center(
                                      child: Image.asset(
                                          "assets/images/graph.png",
                                          fit: BoxFit.cover)),
                                  width: 98,
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                );
  }
}