import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopOval extends StatefulWidget {
  TopOval({Key? key}) : super(key: key);

  @override
  State<TopOval> createState() => _TopOvalState();
}

class _TopOvalState extends State<TopOval> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Positioned(
                  child: ClipPath(
                    clipper: CustomClipPath(),
                    child: Container(
                      width: size.width,
                      height: size.height / 2,
                      padding: const EdgeInsets.all(20.0),
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(0, 229, 50, 100),
                                Color.fromRGBO(1, 90, 255, 100)
                              ]),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: size.height / 18,
                                width: size.width / 5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(0, 229, 50, 100),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 20,
                                        spreadRadius: 0.01,
                                        color:
                                            Color.fromARGB(255, 168, 179, 181),
                                        offset: Offset.zero,
                                      )
                                    ]),
                                child: RichText(
                                    text: TextSpan(
                                        text: '\t\t\t28°C\n',
                                        style: GoogleFonts.jotiOne(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                        children: <TextSpan>[
                                      TextSpan(
                                          text: '\t\tKarkala,KA',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal))
                                    ])),
                              ),
                              SizedBox(width: size.width * 0.42),
                              GestureDetector(
                                onTap: () {}, // Image tapped
                                child: Image.asset(
                                  'assets/images/bottle_blut.png',
                                  fit: BoxFit.cover, // Fixes border issues
                                ),
                              ),
                              SizedBox(width: size.width * 0.07),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.notification_add_outlined,
                                    size: 30,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
  }
}

const double _kCurveHeight = 27;



class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.lineTo(0, h - _kCurveHeight);
    path.relativeQuadraticBezierTo(w / 2, 2 * _kCurveHeight, w, 0);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}