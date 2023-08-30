
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class container_fifth extends StatefulWidget {
  container_fifth({Key? key}) : super(key: key);

  @override
  State<container_fifth> createState() => _container_fifthState();
}

class _container_fifthState extends State<container_fifth> with TickerProviderStateMixin{

  var qoute = "Healthy life wealthy person";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
              height: size.height * 0.18,
              width: size.width * 0.88,
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 15, 20, 10),
                      child: Column(
                        children: [
                          Center(
                              child: Text('Tip of the day',
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(fontSize: 25)))),
                          SizedBox(height: 30),
                          Text(
                            '$qoute',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 20, color: Colors.blue)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
              );
  }
}