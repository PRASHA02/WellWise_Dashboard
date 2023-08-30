// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'BottomNavigation.dart';
import 'Gauge.dart';
import 'Percentage.dart';
import 'conatiner_5.dart';
import 'container_3.dart';
import 'container_4.dart';
import 'custom_path.dart';
import 'water_effect.dart';

void main() => runApp(const MaterialApp(
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    ));

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
int _selectedIndex = 0;

  void _handleSelectionChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: size.height / 1.06,
            width: size.width,
            child: Stack(
              children: [
                TopOval(),
                Guage_Radial_Bar(),
                Positioned(
                    top: size.height / 2.5,
                    left: size.width / 2.8,
                    child: Row(
                      children: [
                        Text(
                          '0',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 245, 20, 91),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          '100',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 186, 229, 12),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                Positioned(
                  top: 304,
                  left: 0,
                  child: Image.asset(
                    'assets/images/Ellipse_1.png',
                    fit: BoxFit.fitHeight, // Fixes border issues
                    height: size.height,
                    width: size.width,
                  ),
                ),
                Positioned(
                  top: 402,
                  left: 0,
                  child: Image.asset(
                    'assets/images/Ellipse_2.png',
                    fit: BoxFit.cover, // Fixes border issues
                    height: 30,
                    width: size.width,
                  ),
                ),
                Positioned(
                  top: size.height / 1.8,
                  left: 20,
                  child: Row(
                    children: [
                      water_wave()
                    ],
                  ),
                ),
                Positioned(
                  top: size.height / 1.8,
                  left: size.width / 2.4,
                  child: Container(
                      height: size.height * 0.16,
                      width: size.width * 0.52,
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
                        child:contain_percent()
                      )),
                ),
                contaner_Third(),
                container_fourth()
              ],
            ),
          ),
          container_fifth(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onIndexChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    )
    
    );
  }
}
