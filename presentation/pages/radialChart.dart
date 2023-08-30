import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RadialBar extends StatefulWidget {
  RadialBar();


  @override
  State<RadialBar> createState() => _RadialBarState();
}

class _RadialBarState extends State<RadialBar> {
  final List<ChartData> chartData = [
    ChartData(1924, 90, '100%', Colors.blue),
    ChartData(1925, 50, '100%', Colors.orange),
    ChartData(1926, 70, '100%', Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return  SfCircularChart(
      margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
      borderWidth: 50.0,
    series: <RadialBarSeries<ChartData, int>>[
      
    RadialBarSeries<ChartData, int>(
      innerRadius: '20',
      useSeriesColor: true,
      trackOpacity: 0.4,
      cornerStyle: CornerStyle.bothCurve,
      dataSource: chartData,
      pointRadiusMapper: (ChartData data, _) => data.text,
      pointColorMapper: (ChartData data, _) => data.color,
      xValueMapper: (ChartData sales, _) => sales.x,
      yValueMapper: (ChartData sales, _) => sales.y,
      
    ),
          ],
        );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.text, this.color);
  final int x;
  final int y;
  final String text;
  final Color color;
}
