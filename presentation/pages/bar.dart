// import 'package:flutter/material.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';
// class PercentIndicatorDemo extends StatefulWidget {
//   @override
//   _PercentIndicatorDemoState createState() => _PercentIndicatorDemoState();
// }

// class _PercentIndicatorDemoState extends State<PercentIndicatorDemo> {


//   @override
//   Widget build(BuildContext context) {
    

//     return Scaffold(
//         appBar: AppBar(
//             title:Text("Percent Indicator Demo"),
//             backgroundColor: Colors.redAccent
//         ),
//         body:Padding(
//               padding: EdgeInsets.all(15.0),
//               child: LinearPercentIndicator(
//                 width: 140.0,
//                 lineHeight: 14.0,
//                 percent: 0.5,
//                 center: Text(
//                   "50.0%",
//                   style: new TextStyle(fontSize: 12.0),
//                 ),
//                 trailing: const Icon(Icons.mood),
//                 // ignore: deprecated_member_use
//                 linearStrokeCap: LinearStrokeCap.roundAll,
//                 backgroundColor: Colors.grey,
//                 progressColor: Colors.blue,
//               ),
//             ),
//     );
//   }
// }