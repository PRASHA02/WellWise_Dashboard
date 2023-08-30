

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Guage_Radial_Bar extends StatefulWidget {
  Guage_Radial_Bar({Key? key}) : super(key: key);

  @override
  State<Guage_Radial_Bar> createState() => _Guage_Radial_BarState();
}

class _Guage_Radial_BarState extends State<Guage_Radial_Bar> with TickerProviderStateMixin{

  double _volumeValue = 50;
  void onVolumeChanged(double value) {
    setState(() {
      _volumeValue = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Positioned(
                  top: 50,
                  left: 30,
                  child: SfRadialGauge(
                    axes: <RadialAxis>[
                      RadialAxis(
                        minimum: 0,
                        maximum: 100,
                        showLabels: false,
                        showTicks: false,
                        radiusFactor: 0.8,
                        axisLineStyle: AxisLineStyle(
                          cornerStyle: CornerStyle.bothCurve,
                          color: const Color.fromARGB(31, 1, 0, 0),
                          thickness: 35,
                        ),
                        pointers: <GaugePointer>[
                          RangePointer(
                            value: _volumeValue,
                            enableAnimation: true,
                            cornerStyle: CornerStyle.bothCurve,
                            width: 30,
                            sizeUnit: GaugeSizeUnit.logicalPixel,
                            gradient: const SweepGradient(
                              colors: <Color>[
                                Color.fromARGB(255, 245, 20, 91),
                                Color.fromARGB(255, 214, 116, 4),
                                Color.fromARGB(255, 244, 240, 15),
                                Color.fromARGB(255, 186, 229, 12),
                              ],
                              stops: <double>[0.15, 0.4, 0.6, 1.0],
                            ),
                          ),
                          MarkerPointer(
                            value: _volumeValue,
                            enableDragging: true,
                            onValueChanged: onVolumeChanged,
                            markerHeight: 40,
                            markerWidth: 40,
                            markerType: MarkerType.circle,
                            color: Color.fromARGB(255, 13, 76, 224),
                            borderWidth: 3,
                            borderColor: const Color.fromARGB(137, 6, 5, 5),
                          ),
                        ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                            angle: 90,
                            axisValue: 100,
                            positionFactor: 0.8,
                            widget: Column(
                              children: [
                                Text(
                                  'My Health',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Score',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Text(
                                  "\t" + _volumeValue.ceil().toString() + '%',
                                  style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: (() {}),
                                    style: TextButton.styleFrom(
                                        padding: const EdgeInsets.fromLTRB(
                                            30, 0, 30, 0),
                                        backgroundColor: Colors.blue),
                                    child: const Text(
                                      'Analyse',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
  }
}


// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';

// void main() => runApp(ChartApp());

// class ChartApp extends StatefulWidget {
//   @override
//   _ChartAppState createState() => _ChartAppState();
// }

// class _ChartAppState extends State<ChartApp> {
//   double _volumeValue = 50; // Define an initial value for the volume

//   void onVolumeChanged(double value) {
//     setState(() {
//       _volumeValue = value;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: SfRadialGauge(
//             axes: <RadialAxis>[
//               RadialAxis(
//                 minimum: 0,
//                 maximum: 100,
//                 showLabels: false,
//                 showTicks: false,
//                 radiusFactor: 0.7,
//                 axisLineStyle: AxisLineStyle(
//                   cornerStyle: CornerStyle.bothCurve,
//                   color: Colors.black12,
//                   thickness: 25,
//                 ),
//                 pointers: <GaugePointer>[
//                   RangePointer(
//                     value: _volumeValue,
//                     cornerStyle: CornerStyle.bothCurve,
//                     width: 25,
//                     sizeUnit: GaugeSizeUnit.logicalPixel,
//                     gradient: const SweepGradient(
//                       colors: <Color>[
//                         Color.fromARGB(255, 245, 20, 91),
                        
//                         Color.fromARGB(255, 167, 239, 73),
//                       ],
//                       stops: <double>[0.25, 0.75],
//                     ),
//                   ),
//                   MarkerPointer(
//                     value: _volumeValue,
//                     enableDragging: true,
//                     onValueChanged: onVolumeChanged,
//                     markerHeight: 34,
//                     markerWidth: 34,
//                     markerType: MarkerType.circle,
//                     color: Color.fromARGB(255, 13, 76, 224),
//                     borderWidth: 2,
//                     borderColor: Colors.white54,
//                   ),
//                 ],
//                 annotations: <GaugeAnnotation>[
//                   GaugeAnnotation(
//                     angle: 60,
//                     axisValue: 5,
//                     positionFactor: 0.2,
//                     widget: Text(
//                       _volumeValue.ceil().toString() + '%',
//                       style: TextStyle(
//                         fontSize: 50,
//                         fontWeight: FontWeight.bold,
//                         color: Color.fromARGB(255, 243, 181, 25),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
