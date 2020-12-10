import 'dart:ui';
import 'package:bus_fleets/screens/schedule-page.dart';
import 'package:bus_fleets/screens/menu-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus fleets by Kashagan Zaure',
      color: Colors.white,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SchedulePage(),

    );

  }
}
// Color.fromRGBO(117, 179, 101, 1)

