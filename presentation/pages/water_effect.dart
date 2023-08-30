import 'dart:async';

import 'package:flutter/cupertino.dart';

class water_wave extends StatefulWidget {
  water_wave({Key? key}) : super(key: key);
  @override
  State<water_wave> createState() => _water_waveState();
}

class _water_waveState extends State<water_wave> with TickerProviderStateMixin{
    var drink = "";

  late AnimationController firstController;
  late Animation<double> firstAnimation;

  late AnimationController secondController;
  late Animation<double> secondAnimation;

  late AnimationController thirdController;
  late Animation<double> thirdAnimation;

  late AnimationController fourthController;
  late Animation<double> fourthAnimation;

  @override
  void initState() {
    super.initState();

    firstController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    firstAnimation = Tween<double>(begin: 1.9, end: 2.1).animate(
        CurvedAnimation(parent: firstController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          firstController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          firstController.forward();
        }
      });

    secondController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    secondAnimation = Tween<double>(begin: 1.8, end: 2.4).animate(
        CurvedAnimation(parent: secondController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          secondController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          secondController.forward();
        }
      });

    thirdController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    thirdAnimation = Tween<double>(begin: 1.8, end: 2.4).animate(
        CurvedAnimation(parent: thirdController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          thirdController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          thirdController.forward();
        }
      });

    fourthController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    fourthAnimation = Tween<double>(begin: 1.9, end: 2.1).animate(
        CurvedAnimation(parent: fourthController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          fourthController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          fourthController.forward();
        }
      });

    Timer(Duration(seconds: 2), () {
      firstController.forward();
    });

    Timer(Duration(milliseconds: 1600), () {
      secondController.forward();
    });

    Timer(Duration(milliseconds: 800), () {
      thirdController.forward();
    });

    fourthController.forward();
  }

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
                          height: size.height * 0.20,
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
                                    Text('Water',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 15)),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Image.asset('assets/images/drink_water.png',
                                        fit: BoxFit.cover),
                                  ],
                                ),
                                Center(
                                  child: Text(
                                    '$drink' + '800/1200mL',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18),
                                  ),
                                ),
                                CustomPaint(
                                  painter: MyPainter(
                                    firstAnimation.value,
                                    secondAnimation.value,
                                    thirdAnimation.value,
                                    fourthAnimation.value,
                                  ),
                                  child: SizedBox(
                                    height: size.height,
                                    width: size.width,
                                  ),
                                ),
                              ],
                            ),
                          )
                          );
  }
}


class MyPainter extends CustomPainter {
  final double firstValue;
  final double secondValue;
  final double thirdValue;
  final double fourthValue;

  MyPainter(
    this.firstValue,
    this.secondValue,
    this.thirdValue,
    this.fourthValue,
  );

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Color(0xff3B6ABA).withOpacity(.8)
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(0, size.height / firstValue)
      ..cubicTo(size.width * .4, size.height / secondValue, size.width * .7,
          size.height / thirdValue, size.width, size.height / fourthValue)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}



// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: HomePage(),
//       title: "Water-Animation",
//     ),
//   );
//   SystemChrome.setSystemUIOverlayStyle(
//     SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent,
//       statusBarIconBrightness: Brightness.light,
//     ),
//   );
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
//   late AnimationController firstController;
//   late Animation<double> firstAnimation;

//   late AnimationController secondController;
//   late Animation<double> secondAnimation;

//   late AnimationController thirdController;
//   late Animation<double> thirdAnimation;

//   late AnimationController fourthController;
//   late Animation<double> fourthAnimation;

//   @override
//   void initState() {
//     super.initState();

//     firstController = AnimationController(
//         vsync: this, duration: Duration(milliseconds: 1500));
//     firstAnimation = Tween<double>(begin: 1.9, end: 2.1).animate(
//         CurvedAnimation(parent: firstController, curve: Curves.easeInOut))
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           firstController.reverse();
//         } else if (status == AnimationStatus.dismissed) {
//           firstController.forward();
//         }
//       });

//     secondController = AnimationController(
//         vsync: this, duration: Duration(milliseconds: 1500));
//     secondAnimation = Tween<double>(begin: 1.8, end: 2.4).animate(
//         CurvedAnimation(parent: secondController, curve: Curves.easeInOut))
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           secondController.reverse();
//         } else if (status == AnimationStatus.dismissed) {
//           secondController.forward();
//         }
//       });

//     thirdController = AnimationController(
//         vsync: this, duration: Duration(milliseconds: 1500));
//     thirdAnimation = Tween<double>(begin: 1.8, end: 2.4).animate(
//         CurvedAnimation(parent: thirdController, curve: Curves.easeInOut))
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           thirdController.reverse();
//         } else if (status == AnimationStatus.dismissed) {
//           thirdController.forward();
//         }
//       });

//     fourthController = AnimationController(
//         vsync: this, duration: Duration(milliseconds: 1500));
//     fourthAnimation = Tween<double>(begin: 1.9, end: 2.1).animate(
//         CurvedAnimation(parent: fourthController, curve: Curves.easeInOut))
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           fourthController.reverse();
//         } else if (status == AnimationStatus.dismissed) {
//           fourthController.forward();
//         }
//       });

   
//     Timer(Duration(seconds: 2), () {
//       firstController.forward();
//     });

//     Timer(Duration(milliseconds: 1600), () {
//       secondController.forward();
//     });

//     Timer(Duration(milliseconds: 800), () {
//       thirdController.forward();
//     });

//     fourthController.forward();

//   }

//   @override
//   void dispose() {
//     firstController.dispose();
//     secondController.dispose();
//     thirdController.dispose();
//     fourthController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Color(0xff2B2C56),
//       body: Stack(
//         children: [
//           Center(
//             child: Text('50 %',
//                 style: TextStyle(
//                     fontWeight: FontWeight.w600,
//                     wordSpacing: 3,
//                     color: Colors.white.withOpacity(.7)),
//                 textScaleFactor: 7),
//           ),
//           CustomPaint(
//             painter: MyPainter(
//               firstAnimation.value,
//               secondAnimation.value,
//               thirdAnimation.value,
//               fourthAnimation.value,
//             ),
//             child: SizedBox(
//               height: size.height,
//               width: size.width,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyPainter extends CustomPainter {
//   final double firstValue;
//   final double secondValue;
//   final double thirdValue;
//   final double fourthValue;

//   MyPainter(
//     this.firstValue,
//     this.secondValue,
//     this.thirdValue,
//     this.fourthValue,
//   );

//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = Paint()
//       ..color = Color.fromARGB(255, 20, 97, 230).withOpacity(.8)
//       ..style = PaintingStyle.fill;

    
//     var path = Path()
//       ..moveTo(0, size.height / firstValue)
//       ..cubicTo(size.width * .4, size.height / secondValue, size.width * .7,
//           size.height / thirdValue, size.width, size.height / fourthValue)
//       ..lineTo(size.width, size.height)
//       ..lineTo(0, size.height);

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }